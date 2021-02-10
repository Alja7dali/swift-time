#if os(macOS) || os(iOS) || os(watchOS) || os(tvOS)
  import Darwin
  private let mach_task_self: () -> mach_port_t = { return mach_task_self_ }
  private typealias timespec_t = mach_timespec_t
#else
  import Glibc
  private typealias timespec_t = timespec
#endif

extension Timespec {
  public enum Clock: Int32 {
  /// Calendar Clock
  ///
  /// Note: This means `CLOCK_REALTIME` on Linux, `CALENDAR_CLOCK` on macOS.
  case calendar = 0

  /// System Clock
  ///
  /// Note: This means `CLOCK_MONOTONIC` on Linux, `SYSTEM_CLOCK` on macOS.
  case system   = 1
  }

  /// Initialze with an instance of `Clock`.
  public init(clock: Clock = .calendar) {
  var cts: timespec_t = timespec_t(tv_sec:0, tv_nsec:0)
  let timespec_clock: CInt

  #if os(Linux)
    timespec_clock = clock.rawValue // (clock == .calendar) ? CLOCK_REALTIME : CLOCK_MONOTONIC
    _ = clock_gettime(timespec_clock, &cts)
  #elseif os(macOS) || os(iOS) || os(watchOS) || os(tvOS)
    var clock_name: clock_serv_t = 0
    timespec_clock = clock.rawValue // (clock == .calendar) ? CALENDAR_CLOCK : SYSTEM_CLOCK
    _ = host_get_clock_service(mach_host_self(), timespec_clock, &clock_name)
    _ = clock_get_time(clock_name, &cts)
    _ = mach_port_deallocate(mach_task_self(), clock_name)
  #endif

  self.init(seconds: Int64(cts.tv_sec), nanoseconds: Int32(cts.tv_nsec))
  }
}