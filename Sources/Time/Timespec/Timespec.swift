/// The representation for the time in nanoseconds.
public struct Timespec {
  public let seconds: Int64
  public let nanoseconds: Int32

  public init(seconds sec: Int64, nanoseconds nsec: Int32) {
    // Applying normalization
    //`nanoseconds` must be always zero or positive value and less than 1_000_000_000
    if nsec >= 1_000_000_000 {
      seconds = sec + Int64(nsec / 1_000_000_000)
      nanoseconds = nsec % 1_000_000_000
    } else if nsec < 0 {
      // For example,
      //   (seconds: 3, nanoseconds: -2_123_456_789)
      //   -> (seconds: 0, nanoseconds: 876_543_211)
      seconds = sec + Int64(nsec / 1_000_000_000) - 1
      nanoseconds = nsec % 1_000_000_000 + 1_000_000_000
    } else {
      seconds = sec
      nanoseconds = nsec
    }
  }
}