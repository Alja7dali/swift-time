import Foundation

extension Timespec: Equatable {
  public static func ==(lhs: Timespec, rhs: Timespec) -> Bool {
    return lhs.seconds == rhs.seconds && lhs.nanoseconds == rhs.nanoseconds
  }
}

extension Timespec: Comparable {
  public static func < (lhs: Timespec, rhs: Timespec) -> Bool {
    if lhs.seconds < rhs.seconds { return true }
    if lhs.seconds > rhs.seconds { return false }
    // Then, in the case of (lhs.seconds == rhs.seconds) ...
    return lhs.nanoseconds < rhs.nanoseconds
  }
}

extension Timespec: Hashable {
  public func hash(into hasher: inout Hasher) {
    hasher.combine(seconds)
    hasher.combine(nanoseconds)
  }
}

extension Timespec: ExpressibleByIntegerLiteral {
  public typealias IntegerLiteralType = Int64
  public init(integerLiteral value: Int64) {
    self.init(seconds: value, nanoseconds: 0)
  }
}

extension Timespec: ExpressibleByFloatLiteral {
  public typealias FloatLiteralType = Double
  public init(floatLiteral value: Double) {
    let double_seconds = floor(value)
    self.init(seconds: Int64(double_seconds), nanoseconds: Int32((value - double_seconds) * 1.0E+9))
  }
}

extension Timespec: CustomStringConvertible {
  public var description: String {
    return String(format: "%.09f", Double(self))
  }
}

extension Timespec: CustomDebugStringConvertible {
  public var debugDescription: String {
    return description
  }
}
