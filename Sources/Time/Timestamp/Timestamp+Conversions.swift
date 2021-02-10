import struct Foundation.Date

// Integers, and Decamils support

// Int, Int8, Int16, Int32, Int64
// UInt, UInt16, UInt32, UInt64, UInt8
extension BinaryInteger {
  public init(_ time: Timestamp) {
    self = Self(time.nanoseconds)
  }
}

// Double, Float
extension BinaryFloatingPoint {
  public init(_ time: Timestamp) {
    self = Self(time.nanoseconds) * 1.0E-9 
  }
}

extension Timestamp {
  public init(_ timespec: Timespec) {
    self.init(nanoseconds: Double(timespec.seconds * 1_000_000_000) + Double(timespec.nanoseconds))
  }

  public init(_ date: Date) {
    self.init(nanoseconds: Double(date.timeIntervalSince1970 * 1_000_000_000))
  }

  public init() {
    self.init(nanoseconds: Double(Date().timeIntervalSince1970 * 1_000_000_000))
  }

  public init<T: BinaryInteger>(nanoseconds value: T) {
    self = .init(nanoseconds: Double(value))
  }

  public init<T: BinaryFloatingPoint>(nanoseconds value: T) {
    self = .init(nanoseconds: Double(value))
  }
  
  public static var now: Timestamp {
    return Timestamp(nanoseconds: Double(Date().timeIntervalSince1970 * 1_000_000_000))
  }
}

extension Date {
  public init(_ timestamp: Timestamp) {
    self.init(timeIntervalSince1970: timestamp.seconds)
  }
}