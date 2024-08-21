using ExportJSONToGenerationCode.Models;
using ExportJSONToGenerationCode.Util;
using Newtonsoft.Json;
using System.Text;

Console.OutputEncoding = Encoding.UTF8; //Hiển thị tiếng việt

string sqlFilePath = "C:\\Users\\PC\\Source\\Repos\\ExportJSONToGenerationCode\\demo.sql";  // Đường dẫn đến tệp SQL
string configJsonFilePath = "C:\\Users\\PC\\Source\\Repos\\ExportJSONToGenerationCode\\Translation.json"; //Đổi lại tùy vào máy
string sqlContent = File.ReadAllText(sqlFilePath);
string configJsonContent = File.ReadAllText(configJsonFilePath);

// Đọc cấu hình ánh xạ từ JSON
var columnNameTranslations = JsonConvert.DeserializeObject<Dictionary<string, string>>(configJsonContent);

// Phân tích cú pháp SQL và chuyển đổi sang đối tượng C#
List<TableSchema> tables = GenerationUtil.ParseSqlToSchema(sqlContent);

// Dịch tên cột theo cấu hình JSON
GenerationUtil.TranslateColumnNames(tables, columnNameTranslations);

// Chuyển đổi đối tượng C# thành JSON
string jsonOutput = JsonConvert.SerializeObject(tables, Formatting.Indented);
File.WriteAllText("C:\\Users\\PC\\Source\\Repos\\ExportJSONToGenerationCode\\output.json", jsonOutput);

Console.WriteLine("Đã chuyển đổi SQL sang JSON và định dạng tên cột thành công.");

