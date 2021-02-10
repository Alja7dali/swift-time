// swift-tools-version:5.0
import PackageDescription

let package = Package(
  name: "Time",
  products: [
    .library(name: "Time", targets: ["Time"]),
  ],
  targets: [
    .target(name: "Time", dependencies: []),
  ]
)