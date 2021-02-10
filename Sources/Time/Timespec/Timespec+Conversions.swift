// Integers, and Decamils support

// Int, Int8, Int16, Int32, Int64
// UInt, UInt16, UInt32, UInt64, UInt8
extension BinaryInteger {
  public init(_ time: Timespec) {
    self = Self(time.seconds)
  }
}

// Double, Float
extension BinaryFloatingPoint {
  public init(_ time: Timespec) {
    self = Self(time.nanoseconds) * 1.0E-9 + Self(time.seconds)
  }
}