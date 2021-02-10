import func Foundation.floor

extension Timestamp: Equatable {
  public static func ==(lhs: Timestamp, rhs: Timestamp) -> Bool {
    return lhs.nanoseconds == rhs.nanoseconds
  }
}

extension Timestamp: Comparable {
  public static func < (lhs: Timestamp, rhs: Timestamp) -> Bool {
    return lhs.nanoseconds < rhs.nanoseconds
  }
}

extension Timestamp: Hashable {
  public func hash(into hasher: inout Hasher) {
    hasher.combine(nanoseconds)
  }
}

extension Timestamp: ExpressibleByIntegerLiteral {
  public typealias IntegerLiteralType = Int64
  public init(integerLiteral value: Int64) {
    self.init(nanoseconds: Double(value))
  }
}

extension Timestamp: ExpressibleByFloatLiteral {
  public typealias FloatLiteralType = Double
  public init(floatLiteral value: Double) {
    self.init(nanoseconds: floor(value) * 1.0E+9)
  }
}

extension Timestamp: CustomStringConvertible {
  public var description: String {
    return String(format: "%.09f seconds", Double(self))
  }
}

extension Timestamp: CustomDebugStringConvertible {
  public var debugDescription: String {
    return description
  }
}