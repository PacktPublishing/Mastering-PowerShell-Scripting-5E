$date | Get-Member -Name Add* -MemberType Method

# Expects output:
# 
#    TypeName: System.DateTime
# 
# Name            MemberType Definition
# ----            ---------- ----------
# Add             Method     datetime Add(timespan value)
# AddDays         Method     datetime AddDays(double value)
# AddHours        Method     datetime AddHours(double value)
# AddMicroseconds Method     datetime AddMicroseconds(double value)
# AddMilliseconds Method     datetime AddMilliseconds(double value)
# AddMinutes      Method     datetime AddMinutes(double value)
# AddMonths       Method     datetime AddMonths(int months)
# AddSeconds      Method     datetime AddSeconds(double value)
# AddTicks        Method     datetime AddTicks(long value)
# AddYears        Method     datetime AddYears(int value)
