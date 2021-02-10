public enum TimeDuration {
  indirect case before1970(TimeDuration) // yet not supported negative value (before January 1st, 1970)

  case zero
      
  case nanosecond
  case nanoseconds(Double)

  case microsecond
  case microseconds(Double)

  case millisecond
  case milliseconds(Double)

  case second
  case seconds(Double)

  case minute
  case minutes(Double)

  case hour
  case hours(Double)

  case day
  case days(Double)

  case week
  case weeks(Double)

  case month
  case months(Double)

  case year
  case years(Double)

  case decade
  case decades(Double)

  case century
  case centuries(Double)
}