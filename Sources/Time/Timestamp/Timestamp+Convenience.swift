extension Timestamp {

  // nanoseconds in microsecond
  // = 1000 
  public var microseconds: Double {
    return (nanoseconds / 1000)
  }

  // nanoseconds in millisecond
  // = 1000 * 1000
  public var milliseconds: Double {
    return (nanoseconds / 1_000_000)
  }

  // nanoseconds in second
  // = 1000 * 1000 * 1000
  public var seconds: Double {
    return (nanoseconds / 1_000_000_000)
  }

  // nanoseconds in minute
  // = 1000 * 1000 * 1000 * 60
  public var minutes: Double {
    return (nanoseconds / 60_000_000_000)
  }

  // nanoseconds in hour
  // = 1000 * 1000 * 1000 * 60 * 60
  public var hours: Double {
    return (nanoseconds / 3_600_000_000_000)
  }

  // nanoseconds in day
  // = 1000 * 1000 * 1000 * 60 * 60 * 24
  public var days: Double {
    return (nanoseconds / 86_400_000_000_000)
  }

  // nanoseconds in week
  // = 1000 * 1000 * 1000 * 60 * 60 * 24 * 7
  public var weeks: Double {
    return (nanoseconds / 604_800_000_000_000)
  }

  // nanoseconds in month
  // = 1000 * 1000 * 1000 * 60 * 60 * 24 * 30.4167
  public var months: Double {
    return (nanoseconds / 2_628_000_002_880_000)
  }

  // nanoseconds in year
  // = 1000 * 1000 * 1000 * 60 * 60 * 24 * 365
  public var years: Double {
    return (nanoseconds / 31_536_000_000_000_000)
  }

  // nanoseconds in decade
  // = 1000 * 1000 * 1000 * 60 * 60 * 24 * 365 * 10
  public var decades: Double {
    return (nanoseconds / 315_360_000_000_000_000)
  }

  // nanoseconds in century
  // = 1000 * 1000 * 1000 * 60 * 60 * 24 * 365 * 100
  public var centuries: Double {
    return (nanoseconds / 3_153_600_000_000_000_000)
  }
}