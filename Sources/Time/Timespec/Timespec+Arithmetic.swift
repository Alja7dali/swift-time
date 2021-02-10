// Arithmetic operations

public func +(lhs: Timespec, rhs: Timespec) -> Timespec {
	return Timespec(
		seconds: lhs.seconds + rhs.seconds,
		nanoseconds: lhs.nanoseconds + rhs.nanoseconds
	)
}

public func +=(lhs: inout Timespec, rhs: Timespec) {
	lhs = lhs + rhs
}

public func -(lhs: Timespec, rhs: Timespec) -> Timespec {
	return Timespec(
		seconds: lhs.seconds - rhs.seconds,
		nanoseconds: lhs.nanoseconds - rhs.nanoseconds
	)
}

public func -=(lhs: inout Timespec, rhs: Timespec) {
	lhs = lhs - rhs
}

public func *(lhs: Timespec, rhs: Timespec) -> Timespec {
	return Timespec(
		seconds: lhs.seconds * rhs.seconds,
		nanoseconds: lhs.nanoseconds * rhs.nanoseconds
	)
}

public func *=(lhs: inout Timespec, rhs: Timespec) {
	lhs = lhs * rhs
}

public func /(lhs: Timespec, rhs: Timespec) -> Timespec {
	return Timespec(
		seconds: lhs.seconds / rhs.seconds,
		nanoseconds: lhs.nanoseconds / rhs.nanoseconds
	)
}

public func /=(lhs: inout Timespec, rhs: Timespec) {
	lhs = lhs / rhs
}

public func %(lhs: Timespec, rhs: Timespec) -> Timespec {
	return Timespec(
		seconds: lhs.seconds % rhs.seconds,
		nanoseconds: lhs.nanoseconds % rhs.nanoseconds
	)
}

public func %=(lhs: inout Timespec, rhs: Timespec) {
	lhs = lhs % rhs
}
