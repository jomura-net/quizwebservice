using System;

namespace Quiz
{
    public interface ISchedule
    {
        Boolean IsTrigger();
        void Execute();
        Boolean IsFinish();
    }
}
