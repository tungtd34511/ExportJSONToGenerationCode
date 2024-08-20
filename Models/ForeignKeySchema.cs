using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExportJSONToGenerationCode.Models
{
    public class ForeignKeySchema
    {
        [JsonProperty("name")]
        public string Name { get; set; }

        [JsonProperty("fk")]
        public string Fk { get; set; }
    }
}
