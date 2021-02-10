extension TimeDuration {
  public var nanoseconds: TimeDuration {
    return .nanoseconds(self == .zero ? 0 : rawValue)
  }

  public var microseconds: TimeDuration {
    return .microseconds(self == .zero ? 0 : rawValue / 1_000)
  }

  public var milliseconds: TimeDuration {
    return .milliseconds(self == .zero ? 0 : rawValue / 1_000_000)
  }

  public var seconds: TimeDuration {
    return .seconds(self == .zero ? 0 : rawValue / 1_000_000_000)
  }

  public var minutes: TimeDuration {
    return .minutes(self == .zero ? 0 : rawValue / 60_000_000_000)
  }

  public var hours: TimeDuration {
    return .hours(self == .zero ? 0 : rawValue / 3_600_000_000_000)
  }

  public var days: TimeDuration {
    return .days(self == .zero ? 0 : rawValue / 86_400_000_000_000)
  }

  public var weeks: TimeDuration {
    return .weeks(self == .zero ? 0 : rawValue / 604_800_000_000_000)
  }

  public var months: TimeDuration {
    return .months(self == .zero ? 0 : rawValue / 2_628_000_002_880_000)
  }

  public var years: TimeDuration {
    return .years(self == .zero ? 0 : rawValue / 31_536_000_000_000_000)
  }

  public var decades: TimeDuration {
    return .decades(self == .zero ? 0 : rawValue / 315_360_000_000_000_000)
  }

  public var centuries: TimeDuration {
    return .centuries(self == .zero ? 0 : rawValue / 3_153_600_000_000_000_000)
  }

  public var count: Double {
    switch self {
    case .zero:                     return 0
    case .nanosecond:               return 1
    case .nanoseconds(let count):   return count
    case .microsecond:              return 1
    case .microseconds(let count):  return count
    case .millisecond:              return 1
    case .milliseconds(let count):  return count
    case .second:                   return 1
    case .seconds(let count):       return count
    case .minute:                   return 1
    case .minutes(let count):       return count
    case .hour:                     return 1
    case .hours(let count):         return count
    case .day:                      return 1
    case .days(let count):          return count
    case .week:                     return 1
    case .weeks(let count):         return count
    case .month:                    return 1
    case .months(let count):        return count
    case .year:                     return 1
    case .years(let count):         return count
    case .decade:                   return 1
    case .decades(let count):       return count
    case .century:                  return 1
    case .centuries(let count):     return count
    case .before1970(let time):     return -time.count
    }
  }
}