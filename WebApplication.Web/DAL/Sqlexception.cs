using System;
using System.Runtime.Serialization;

namespace WebApplication.Web.DAL
{
    [Serializable]
    internal class Sqlexception : Exception
    {
        public Sqlexception()
        {
        }

        public Sqlexception(string message) : base(message)
        {
        }

        public Sqlexception(string message, Exception innerException) : base(message, innerException)
        {
        }

        protected Sqlexception(SerializationInfo info, StreamingContext context) : base(info, context)
        {
        }
    }
}