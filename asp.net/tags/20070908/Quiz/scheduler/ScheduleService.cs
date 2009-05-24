using System;
using System.Web;
using System.Web.Caching;
using System.Collections.Generic;
using System.Threading;

namespace Quiz
{
    /// <summary>
    /// ScheduleService の概要の説明です
    /// </summary>
    public class ScheduleService
    {
        private static ScheduleService singleton = new ScheduleService();
        private static Cache cache = null;
        private static Boolean isExecuting = false;
        private String m_cacheKey = "ScheduleService";
        private List<ISchedule> m_tasks = new List<ISchedule>();

        public static ScheduleService Singleton
        {
            get { return ScheduleService.singleton; }
        }
        protected static Cache Cache
        {
            get { return ScheduleService.cache; }
        }
        public String CacheKey
        {
            get { return this.m_cacheKey; }
            set { this.m_cacheKey = value; }
        }
        public List<ISchedule> Tasks
        {
            get { return this.m_tasks; }
        }

        private ScheduleService()
        {
        }

        public static void Start()
        {
            if (HttpContext.Current == null)
            {
                throw new InvalidOperationException("HttpContext is unavailable.");
            }
            lock (typeof(ScheduleService))
            {
                ScheduleService.cache = HttpContext.Current.Cache;
                ScheduleService.RegisterTickFunction();
            }
        }
        private static void RegisterTickFunction()
        {
            ScheduleService.cache.Insert(ScheduleService.singleton.CacheKey, "ScheduleService", null,
                DateTime.MaxValue, TimeSpan.FromMinutes(10), CacheItemPriority.Normal
                , new CacheItemRemovedCallback(ScheduleService.Tick));
        }
        private static void Tick(String inKey, Object inValue, CacheItemRemovedReason inReason)
        {
            List<ISchedule> TaskList = new List<ISchedule>();

            if (ScheduleService.isExecuting == false)
            {
                lock (typeof(ScheduleService))
                {
                    if (ScheduleService.isExecuting == false)
                    {
                        ScheduleService.isExecuting = true;

                        foreach (ISchedule Task in ScheduleService.singleton.Tasks)
                        {
                            try
                            {
                                if (Task.IsTrigger() == false)
                                { continue; }

                                if (Task.IsFinish() == true)
                                {
                                    //ScheduleService.singleton.Tasks.Remove(Task);
                                    continue;
                                }
                                Thread thd = new Thread(new ThreadStart(Task.Execute));
                                thd.IsBackground = true;
                                thd.Start();
                            }
                            catch
                            {
                            }
                        }
                        ScheduleService.isExecuting = false;
                    }
                    ScheduleService.RegisterTickFunction();
                }
            }
        }

        public static void End()
        {
            ScheduleService.cache.Remove(ScheduleService.singleton.CacheKey);
        }
    }
}
