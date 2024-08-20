using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExportJSONToGenerationCode.Models
{
    public class TableSchema
    {
        [JsonProperty("tableName")]
        public string TableName { get; set; }

        [JsonProperty("foreignKey")]
        public List<ForeignKeySchema> ForeignKey { get; set; }

        [JsonProperty("schema")]
        public List<Dictionary<string, List<ColumnSchema>>> Schema { get; set; }
    }
}
