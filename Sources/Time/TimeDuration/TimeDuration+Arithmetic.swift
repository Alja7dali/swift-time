// Arithmetic operations

public func +(lhs: TimeDuration, rhs: TimeDuration) -> TimeDuration {
	return TimeDuration(
		rawValue: lhs.rawValue + rhs.rawValue
	)
}

public func +=(lhs: inout TimeDuration, rhs: TimeDuration) {
	lhs = lhs + rhs
}

public func -(lhs: TimeDuration, rhs: TimeDuration) -> TimeDuration {
	return TimeDuration(
		rawValue: lhs.rawValue - rhs.rawValue
	)
}

public func -=(lhs: inout TimeDuration, rhs: TimeDuration) {
	lhs = lhs - rhs
}

public func *(lhs: TimeDuration, rhs: TimeDuration) -> TimeDuration {
	return TimeDuration(
		rawValue: lhs.rawValue * rhs.rawValue
	)
}

public func *=(lhs: inout TimeDuration, rhs: TimeDuration) {
	lhs = lhs * rhs
}

public func /(lhs: TimeDuration, rhs: TimeDuration) -> TimeDuration {
	return TimeDuration(
		rawValue: lhs.rawValue / rhs.rawValue
	)
}

public func /=(lhs: inout TimeDuration, rhs: TimeDuration) {
	lhs = lhs / rhs
}


// Timestamp 

public func +(lhs: TimeDuration, rhs: Timestamp) -> TimeDuration {
	return TimeDuration(
		rawValue: lhs.rawValue + rhs.nanoseconds
	)
}

public func +=(lhs: inout TimeDuration, rhs: Timestamp) {
	lhs = lhs + rhs
}

public func -(lhs: TimeDuration, rhs: Timestamp) -> TimeDuration {
	return TimeDuration(
		rawValue: lhs.rawValue - rhs.nanoseconds
	)
}

public func -=(lhs: inout TimeDuration, rhs: Timestamp) {
	lhs = lhs - rhs
}

public func *(lhs: TimeDuration, rhs: Timestamp) -> TimeDuration {
	return TimeDuration(
		rawValue: lhs.rawValue * rhs.nanoseconds
	)
}

public func *=(lhs: inout TimeDuration, rhs: Timestamp) {
	lhs = lhs * rhs
}

public func /(lhs: TimeDuration, rhs: Timestamp) -> TimeDuration {
	return TimeDuration(
		rawValue: lhs.rawValue / rhs.nanoseconds
	)
}

public func /=(lhs: inout TimeDuration, rhs: Timestamp) {
	lhs = lhs / rhs
}


// Integers

public func +<T: BinaryInteger>(lhs: TimeDuration, rhs: T) -> TimeDuration {
	return TimeDuration(
		rawValue: lhs.rawValue + TimeDuration.RawValue(rhs)
	)
}

public func +=<T: BinaryInteger>(lhs: inout TimeDuration, rhs: T) {
	lhs = lhs + rhs
}

public func -<T: BinaryInteger>(lhs: TimeDuration, rhs: T) -> TimeDuration {
	return TimeDuration(
		rawValue: lhs.rawValue - TimeDuration.RawValue(rhs)
	)
}

public func -=<T: BinaryInteger>(lhs: inout TimeDuration, rhs: T) {
	lhs = lhs - rhs
}

public func *<T: BinaryInteger>(lhs: TimeDuration, rhs: T) -> TimeDuration {
	return TimeDuration(
		rawValue: lhs.rawValue * TimeDuration.RawValue(rhs)
	)
}

public func *=<T: BinaryInteger>(lhs: inout TimeDuration, rhs: T) {
	lhs = lhs * rhs
}

public func /<T: BinaryInteger>(lhs: TimeDuration, rhs: T) -> TimeDuration {
	return TimeDuration(
		rawValue: lhs.rawValue / TimeDuration.RawValue(rhs)
	)
}

public func /=<T: BinaryInteger>(lhs: inout TimeDuration, rhs: T) {
	lhs = lhs / rhs
}


// Floating

public func +<T: BinaryFloatingPoint>(lhs: TimeDuration, rhs: T) -> TimeDuration {
	return TimeDuration(
		rawValue: lhs.rawValue + TimeDuration.RawValue(rhs)
	)
}

public func +=<T: BinaryFloatingPoint>(lhs: inout TimeDuration, rhs: T) {
	lhs = lhs + rhs
}

public func -<T: BinaryFloatingPoint>(lhs: TimeDuration, rhs: T) -> TimeDuration {
	return TimeDuration(
		rawValue: lhs.rawValue - TimeDuration.RawValue(rhs)
	)
}

public func -=<T: BinaryFloatingPoint>(lhs: inout TimeDuration, rhs: T) {
	lhs = lhs - rhs
}

public func *<T: BinaryFloatingPoint>(lhs: TimeDuration, rhs: T) -> TimeDuration {
	return TimeDuration(
		rawValue: lhs.rawValue * TimeDuration.RawValue(rhs)
	)
}

public func *=<T: BinaryFloatingPoint>(lhs: inout TimeDuration, rhs: T) {
	lhs = lhs * rhs
}

public func /<T: BinaryFloatingPoint>(lhs: TimeDuration, rhs: T) -> TimeDuration {
	return TimeDuration(
		rawValue: lhs.rawValue / TimeDuration.RawValue(rhs)
	)
}

public func /=<T: BinaryFloatingPoint>(lhs: inout TimeDuration, rhs: T) {
	lhs = lhs / rhs
}
