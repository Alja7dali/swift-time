public struct Timestamp {

  public let nanoseconds: Double

  public init(nanoseconds: Double) {
    self.nanoseconds = nanoseconds
  }
}

extension Timestamp {
  public func duration(since: Timestamp) -> TimeDuration {
    return TimeDuration(since - nanoseconds)
  }
}