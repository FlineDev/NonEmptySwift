// swift-tools-version:5.5
import PackageDescription

let package = Package(
  name: "NonEmptySwift",
  products: [
    .library(name: "NonEmptySwift", targets: ["NonEmptySwift"]),
  ],
  dependencies: [
    // 🎁 A compile-time guarantee that a collection contains a value.
    .package(url: "https://github.com/pointfreeco/swift-nonempty", from: "0.4.0"),
  ],
  targets: [
    .target(name: "NonEmptySwift", dependencies: [.product(name: "NonEmpty", package: "swift-nonempty")]),
    .testTarget(name: "NonEmptySwiftTests", dependencies: ["NonEmptySwift"]),
  ]
)
