using System;
using System.Globalization;
using System.Web;
using Xomorod.Demo.Resources;

namespace Xomorod.Demo.Core
{
    public class SessionController : IDisposable
    {
        #region Properties

        // **** Add your session properties here

        public string MetaData { get; set; }
        public DateTime EntryTime { get; set; }
        public string Username { get; set; }
        public CultureInfo Culture { get; set; }
        public Guid UserId { get; set; }
        public bool Expireable { get; set; }
        public static TimeSpan ExpireHours { get; set; }

        #endregion

        #region Constructors

        static SessionController()
        {
            ExpireHours = new TimeSpan(30, 1, 20, 15); // 30days, 1hours, 20min, 15sec,
        }

        // private constructor
        private SessionController()
        {
            MetaData = string.Empty;
            EntryTime = DateTime.Now;
            Culture = new CultureInfo("en");
            UserId = Guid.NewGuid();
            Expireable = false;
        }

        #endregion

        #region Static Methods

        /// <summary>
        /// Gets the current session. 
        /// </summary>
        public static SessionController Current
        {
            get
            {
                SessionController session = (SessionController)HttpContext.Current.Session["__SessionController__"];

                if (session == null)
                {
                    session = new SessionController();
                    HttpContext.Current.Session["__SessionController__"] = session;
                }

                return session;
            }
        }

        public static string GetResource(string resName)
        {
            return localization.ResourceManager.GetString(resName, Current.Culture);
        }

        #endregion

        #region Methods

        public void Dispose()
        {
            HttpContext.Current.Session.Clear();
        }


        public bool IsSessionExpired()
        {
            var sub = DateTime.Now - EntryTime;

            return Expireable && (sub >= ExpireHours);
        }


        public bool IsTrustUser()
        {
            return !string.IsNullOrEmpty(Username) && !IsSessionExpired();
        }

        #endregion
    }
}