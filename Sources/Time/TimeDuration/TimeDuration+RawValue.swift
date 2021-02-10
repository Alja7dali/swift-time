extension TimeDuration: RawRepresentable {
  public typealias RawValue = Double

  public init(rawValue: RawValue) {
    switch true {
    case rawValue > 3_153_600_000_000_000_000:
      self = .centuries(rawValue / 3_153_600_000_000_000_000)

    case rawValue == 3_153_600_000_000_000_000:
      self = .century

    case rawValue > 315_360_000_000_000_000:
      self = .decades(rawValue / 315_360_000_000_000_000)

    case rawValue == 315_360_000_000_000_000:
      self = .decade

    case rawValue > 31_536_000_000_000_000:
      self = .years(rawValue / 31_536_000_000_000_000)

    case rawValue == 31_536_000_000_000_000:
      self = .year

    case rawValue > 2_628_000_002_880_000:
      self = .months(rawValue / 2_628_000_002_880_000)

    case rawValue == 2_628_000_002_880_000:
      self = .month

    case rawValue > 604_800_000_000_000:
      self = .weeks(rawValue / 604_800_000_000_000)

    case rawValue == 604_800_000_000_000:
      self = .week

    case rawValue > 86_400_000_000_000:
      self = .days(rawValue / 86_400_000_000_000)

    case rawValue == 86_400_000_000_000:
      self = .day

    case rawValue > 3_600_000_000_000:
      self = .hours(rawValue / 3_600_000_000_000)

    case rawValue == 3_600_000_000_000:
      self = .hour

    case rawValue > 60_000_000_000:
      self = .minutes(rawValue / 60_000_000_000)

    case rawValue == 60_000_000_000:
      self = .minute

    case rawValue > 1_000_000_000:
      self = .seconds(rawValue / 1_000_000_000)

    case rawValue == 1_000_000_000:
      self = .second

    case rawValue > 1_000_000:
      self = .milliseconds(rawValue / 1_000_000)

    case rawValue == 1_000_000:
      self = .millisecond
      
    case rawValue > 1000:
      self = .microseconds(rawValue / 1000)

    case rawValue == 1000:
      self = .microsecond
      
    case rawValue > 1:
      self = .nanoseconds(rawValue)

    case rawValue == 1:
      self = .nanosecond

    case rawValue == 0:
      self = .zero

    default:
      self = .before1970(TimeDuration(rawValue: -rawValue)) // yet not supported negative value (before January 1st, 1970)
    }
  }

  public var rawValue: RawValue {
    switch self {
    case .zero:
      return 0
      
    case .nanosecond:
      return 1

    case .nanoseconds(let count):
      return count

    case .microsecond:
      return 1000

    case .microseconds(let count):
      return count * 1000

    case .millisecond:
      return 1_000_000

    case .milliseconds(let count):
      return count * 1_000_000

    case .second:
      return 1_000_000_000

    case .seconds(let count):
      return count * 1_000_000_000

    case .minute:
      return 60_000_000_000

    case .minutes(let count):
      return count * 60_000_000_000

    case .hour:
      return 3_600_000_000_000

    case .hours(let count):
      return count * 3_600_000_000_000

    case .day:
      return 86_400_000_000_000

    case .days(let count):
      return count * 86_400_000_000_000

    case .week:
      return 604_800_000_000_000

    case .weeks(let count):
      return count * 604_800_000_000_000

    case .month:
      return 2_628_000_002_880_000

    case .months(let count):
      return count * 2_628_000_002_880_000

    case .year:
      return 31_536_000_000_000_000

    case .years(let count):
      return count * 31_536_000_000_000_000

    case .decade:
      return 315_360_000_000_000_000

    case .decades(let count):
      return count * 315_360_000_000_000_000

    case .century:
      return 3_153_600_000_000_000_000

    case .centuries(let count):
      return count * 3_153_600_000_000_000_000

    case .before1970(let time):
      return -time.rawValue
    }
  }
}