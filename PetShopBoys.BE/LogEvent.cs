using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PetShopBoys.BE
{
    public class LogEvent
    {
        public int IdLogEntry { get; set; }
        public int Severity { get; set; }
        public string Message { get; set; }
        public DateTime DateTime { get; set; }
        public string Principal { get; set; }
        public int EventId { get; set; }
        public Category EventCategory { get; set; }

        public LogEvent(int severity, string message, string principal, int eventId, Category eventCategory)
        {
            Severity = severity;
            Message = message;
            DateTime = DateTime.Now;
            Principal = principal;
            EventId = eventId;
            EventCategory = eventCategory;
        }

        public enum Category
        {
            Standard,
            Administrative
        }



    }
}
