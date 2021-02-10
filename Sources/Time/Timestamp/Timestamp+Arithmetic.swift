// Arithmetic operations

public func +(lhs: Timestamp, rhs: Timestamp) -> Timestamp {
	return Timestamp(
		nanoseconds: lhs.nanoseconds + rhs.nanoseconds
	)
}

public func +=(lhs: inout Timestamp, rhs: Timestamp) {
	lhs = lhs + rhs
}

public func -(lhs: Timestamp, rhs: Timestamp) -> Timestamp {
	return Timestamp(
		nanoseconds: lhs.nanoseconds - rhs.nanoseconds
	)
}

public func -=(lhs: inout Timestamp, rhs: Timestamp) {
	lhs = lhs - rhs
}

public func *(lhs: Timestamp, rhs: Timestamp) -> Timestamp {
	return Timestamp(
		nanoseconds: lhs.nanoseconds * rhs.nanoseconds
	)
}

public func *=(lhs: inout Timestamp, rhs: Timestamp) {
	lhs = lhs * rhs
}

public func /(lhs: Timestamp, rhs: Timestamp) -> Timestamp {
	return Timestamp(
		nanoseconds: lhs.nanoseconds / rhs.nanoseconds
	)
}

public func /=(lhs: inout Timestamp, rhs: Timestamp) {
	lhs = lhs / rhs
}


// Time 

public func +(lhs: Timestamp, rhs: TimeDuration) -> Timestamp {
	return Timestamp(
		nanoseconds: lhs.nanoseconds + rhs.rawValue
	)
}

public func +=(lhs: inout Timestamp, rhs: TimeDuration) {
	lhs = lhs + rhs
}

public func -(lhs: Timestamp, rhs: TimeDuration) -> Timestamp {
	return Timestamp(
		nanoseconds: lhs.nanoseconds - rhs.rawValue
	)
}

public func -=(lhs: inout Timestamp, rhs: TimeDuration) {
	lhs = lhs - rhs
}

public func *(lhs: Timestamp, rhs: TimeDuration) -> Timestamp {
	return Timestamp(
		nanoseconds: lhs.nanoseconds * rhs.rawValue
	)
}

public func *=(lhs: inout Timestamp, rhs: TimeDuration) {
	lhs = lhs * rhs
}

public func /(lhs: Timestamp, rhs: TimeDuration) -> Timestamp {
	return Timestamp(
		nanoseconds: lhs.nanoseconds / rhs.rawValue
	)
}

public func /=(lhs: inout Timestamp, rhs: TimeDuration) {
	lhs = lhs / rhs
}


// Integers

public func +<T: BinaryInteger>(lhs: Timestamp, rhs: T) -> Timestamp {
	return Timestamp(
		nanoseconds: lhs.nanoseconds + TimeDuration(rawValue: rhs).rawValue
	)
}

public func +=<T: BinaryInteger>(lhs: inout Timestamp, rhs: T) {
	lhs = lhs + rhs
}

public func -<T: BinaryInteger>(lhs: Timestamp, rhs: T) -> Timestamp {
	return Timestamp(
		nanoseconds: lhs.nanoseconds - TimeDuration(rawValue: rhs).rawValue
	)
}

public func -=<T: BinaryInteger>(lhs: inout Timestamp, rhs: T) {
	lhs = lhs - rhs
}

public func *<T: BinaryInteger>(lhs: Timestamp, rhs: T) -> Timestamp {
	return Timestamp(
		nanoseconds: lhs.nanoseconds * TimeDuration(rawValue: rhs).rawValue
	)
}

public func *=<T: BinaryInteger>(lhs: inout Timestamp, rhs: T) {
	lhs = lhs * rhs
}

public func /<T: BinaryInteger>(lhs: Timestamp, rhs: T) -> Timestamp {
	return Timestamp(
		nanoseconds: lhs.nanoseconds / TimeDuration(rawValue: rhs).rawValue
	)
}

public func /=<T: BinaryInteger>(lhs: inout Timestamp, rhs: T) {
	lhs = lhs / rhs
}


// Floating

public func +<T: BinaryFloatingPoint>(lhs: Timestamp, rhs: T) -> Timestamp {
	return Timestamp(
		nanoseconds: lhs.nanoseconds + TimeDuration(rawValue: rhs).rawValue
	)
}

public func +=<T: BinaryFloatingPoint>(lhs: inout Timestamp, rhs: T) {
	lhs = lhs + rhs
}

public func -<T: BinaryFloatingPoint>(lhs: Timestamp, rhs: T) -> Timestamp {
	return Timestamp(
		nanoseconds: lhs.nanoseconds - TimeDuration(rawValue: rhs).rawValue
	)
}

public func -=<T: BinaryFloatingPoint>(lhs: inout Timestamp, rhs: T) {
	lhs = lhs - rhs
}

public func *<T: BinaryFloatingPoint>(lhs: Timestamp, rhs: T) -> Timestamp {
	return Timestamp(
		nanoseconds: lhs.nanoseconds * TimeDuration(rawValue: rhs).rawValue
	)
}

public func *=<T: BinaryFloatingPoint>(lhs: inout Timestamp, rhs: T) {
	lhs = lhs * rhs
}

public func /<T: BinaryFloatingPoint>(lhs: Timestamp, rhs: T) -> Timestamp {
	return Timestamp(
		nanoseconds: lhs.nanoseconds / TimeDuration(rawValue: rhs).rawValue
	)
}

public func /=<T: BinaryFloatingPoint>(lhs: inout Timestamp, rhs: T) {
	lhs = lhs / rhs
}
