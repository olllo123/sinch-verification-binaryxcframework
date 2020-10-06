// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Verification",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Verification",
            targets: ["Verification"]),
    ],
    dependencies: [
      .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.2.0")),
      .package(url: "https://github.com/marmelroy/PhoneNumberKit", .upToNextMajor(from: "3.3.1"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "Verification", path: "artifacts/Verification.xcframework")
        .testTarget(
            name: "VerificationTests",
            dependencies: ["Verification"]),
    ]
)