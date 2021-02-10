import struct Foundation.Date

// Integers, and Decamils support

// Int, Int8, Int16, Int32, Int64
// UInt, UInt16, UInt32, UInt64, UInt8
extension BinaryInteger {
  public init(_ time: TimeDuration) {
    self = Self(time.rawValue)
  }
}

// Double, Float
extension BinaryFloatingPoint {
  public init(_ time: TimeDuration) {
    self = Self(time.rawValue) * 1.0E-9
  }
}

extension TimeDuration {
  public init(_ timespec: Timespec) {
    self = .nanoseconds(Double(timespec.seconds * 1_000_000_000) + Double(timespec.nanoseconds))
  }

  public init(_ date: Date) {
    self = .nanoseconds(date.timeIntervalSince1970 * 1_000_000_000)
  }

  public init<T: BinaryInteger>(rawValue value: T) {
    self = .init(rawValue: RawValue(value))
  }

  public init<T: BinaryFloatingPoint>(rawValue value: T) {
    self = .init(rawValue: RawValue(value))
  }

  public init(_ timestamp: Timestamp) {
    self = .nanoseconds(timestamp.nanoseconds)
  }
}

extension Date {
  public init(_ time: TimeDuration) {
    self.init(timeIntervalSince1970: time.seconds.count)
  }
}