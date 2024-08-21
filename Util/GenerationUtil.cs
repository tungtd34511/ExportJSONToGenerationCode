using ExportJSONToGenerationCode.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace ExportJSONToGenerationCode.Util
{
    public static class GenerationUtil
    {
        public static List<TableSchema> ParseSqlToSchema(string sqlContent)
        {
            var tables = new List<TableSchema>();
            var tableMatches = Regex.Matches(sqlContent, @"CREATE TABLE \[dbo\]\.\[(?<tableName>.*?)\]\s*\((?<schema>[\s\S]*?)\)\s*(TEXTIMAGE_ON|ON \[PRIMARY\]|\))", RegexOptions.Singleline);

            foreach (Match tableMatch in tableMatches)
            {
                var tableName = tableMatch.Groups["tableName"].Value;
                var schemaContent = tableMatch.Groups["schema"].Value;

                var schema = new List<Dictionary<string, List<ColumnSchema>>>();
                var columns = new Dictionary<string, List<ColumnSchema>>();
                var columnMatches = Regex.Matches(schemaContent, @"\[(?<columnName>.*?)\]\s*\[(?<dataType>.*?)\](\((?<dataLength>.*?)\))?\s*(?<nullability>NOT NULL|NULL)?", RegexOptions.Singleline);

                foreach (Match columnMatch in columnMatches)
                {
                    var columnName = columnMatch.Groups["columnName"].Value;
                    var dataType = columnMatch.Groups["dataType"].Value;
                    var dataLength = columnMatch.Groups["dataLength"].Value;
                    var isRequired = columnMatch.Groups["nullability"].Value.Contains("NOT NULL");

                    var columnSchema = new ColumnSchema
                    {
                        Format = dataType.ToUpper()+(!string.IsNullOrEmpty(dataLength)?$"({dataLength.ToUpper()})":""),
                        Name = columnName,
                        Require = isRequired
                    };

                    columns[columnName] = new List<ColumnSchema> { columnSchema };
                }

                schema.Add(columns);

                var foreignKeyMatches = Regex.Matches(sqlContent,
       $@"ALTER TABLE \[dbo\]\.\[{tableName}\]\s+WITH CHECK ADD\s+CONSTRAINT\s+\[(?<constraintName>.*?)\]\s+FOREIGN KEY\s*\(\[(?<fkColumn>.*?)\]\)\s*REFERENCES\s*\[dbo\]\.\[(?<refTable>.*?)\]\s*\(\[(?<refColumn>.*?)\]\)",
       RegexOptions.Singleline); 
                var foreignKeys = new List<ForeignKeySchema>();

                foreach (Match fkMatch in foreignKeyMatches)
                {
                    foreignKeys.Add(new ForeignKeySchema
                    {
                        Name = fkMatch.Groups["refTable"].Value,
                        Fk = fkMatch.Groups["fkColumn"].Value
                    });
                }

                tables.Add(new TableSchema
                {
                    TableName = tableName,
                    ForeignKey = foreignKeys,
                    Schema = schema
                });
            }

            return tables;
        }

        public static void TranslateColumnNames(List<TableSchema> tables, Dictionary<string, string> translations)
        {
            foreach (var table in tables)
            {
                foreach (var schema in table.Schema)
                {
                    foreach (var columnName in new List<string>(schema.Keys))
                    {
                        if (translations.ContainsKey(columnName))
                        {
                            var translatedName = translations[columnName];

                            var columnSchemaList = schema[columnName];

                            foreach (var columnSchema in columnSchemaList)
                            {
                                columnSchema.Name = translatedName;  // Dịch tên cột
                            }

                            schema[columnName] = columnSchemaList;
                        }
                    }
                }
            }
        }
    }
}
