import func Foundation.floor

extension TimeDuration: Equatable {
  public static func ==(lhs: TimeDuration, rhs: TimeDuration) -> Bool {
    return lhs.rawValue == rhs.rawValue
  }
}

extension TimeDuration: Comparable {
  public static func < (lhs: TimeDuration, rhs: TimeDuration) -> Bool {
    return lhs.rawValue < rhs.rawValue
  }
}

extension TimeDuration: Hashable {
  public func hash(into hasher: inout Hasher) {
    hasher.combine(rawValue)
  }
}

extension TimeDuration: ExpressibleByIntegerLiteral {
  public typealias IntegerLiteralType = Int64
  public init(integerLiteral value: Int64) {
    self.init(rawValue: RawValue(value))
  }
}

extension TimeDuration: ExpressibleByFloatLiteral {
  public typealias FloatLiteralType = Double
  public init(floatLiteral value: Double) {
    self.init(rawValue: Double(floor(value) * 1.0E+9))
  }
}

extension Double {
  fileprivate var significantFractionalDecimalDigits: Int {
    return max(-exponent, 0)
  }
}

extension TimeDuration: CustomStringConvertible {
  public var description: String {
    switch self {
    case .zero:
      return "zero nanosecond"

    case .nanosecond:
      return "one nanosecond"

    case .nanoseconds(let count):
      return count == 1.0 ? "one nanosecond" : "\(asNumber(count)) nanoseconds"

    case .microsecond:
      return "one microsecond"

    case .microseconds(let count):
      return count == 1.0 ? "one microsecond" : "\(asNumber(count)) microseconds"

    case .millisecond:
      return "one millisecond"

    case .milliseconds(let count):
      return count == 1.0 ? "one millisecond" : "\(asNumber(count)) milliseconds"

    case .second:
      return "one second"

    case .seconds(let count):
      return count == 1.0 ? "one second" : "\(asNumber(count)) seconds"

    case .minute:
      return "one minute"

    case .minutes(let count):
      return count == 1.0 ? "one minute" : "\(asNumber(count)) minutes"

    case .hour:
      return "one hour"

    case .hours(let count):
      return count == 1.0 ? "one hour" : "\(asNumber(count)) hours"

    case .day:
      return "one day"

    case .days(let count):
      return count == 1.0 ? "one day" : "\(asNumber(count)) days"

    case .week:
      return "one week"

    case .weeks(let count):
      return count == 1.0 ? "one week" : "\(asNumber(count)) weeks"

    case .month:
      return "one month"

    case .months(let count):
      return count == 1.0 ? "one month" : "\(asNumber(count)) months"

    case .year:
      return "one year"

    case .years(let count):
      return count == 1.0 ? "one year" : "\(asNumber(count)) years"

    case .decade:
      return "one decade"

    case .decades(let count):
      return count == 1.0 ? "one decade" : "\(asNumber(count)) decades"

    case .century:
      return "one century"

    case .centuries(let count):
      return count == 1.0 ? "one century" : "\(asNumber(count)) centuries"

    case .before1970(let time):
      return "\(time) before 1970"
    }
  }
}

extension TimeDuration: CustomDebugStringConvertible {
  public var debugDescription: String {
    return description
  }
}

private func asNumber(_ time: Double) -> String {
  return time.significantFractionalDecimalDigits > 0 ? "\(time)" : "\(UInt64(time))"
}