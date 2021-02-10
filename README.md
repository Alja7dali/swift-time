###### This is a time helper library

#### Example:

```swift
import Time
import struct Foundation.Date

let currentDate = Date()
let currentTime = Timestamp(currentDate)          // Date().timeIntervalSince1970
let duration = TimeDuration.year                  // 1 year

print(TimeDuration(currentTime).years)            // 51 years
print(TimeDuration(currentTime - duration).years) // 50 years

print(currentDate.timeIntervalSince1970)          // 1612917747.7702088
print(currentTime.nanoseconds)                    // 16129177477702088
print(currentTime.seconds)                        // 1612917747

print(currentTime)                                // 1612917747.770208836 seconds
```

#### Importing Time:

To include `Time` in your project, you need to add the following to the `dependencies` attribute defined in your `Package.swift` file.
```swift
dependencies: [
  .package(url: "https://github.com/alja7dali/swift-time.git", from: "1.0.0")
]
```