// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "apiclient",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "apiclient",
            targets: ["apiclient"]),
    ],
    dependencies: [
        // Example: Alamofire as a dependency
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.6.0")
    ],
    targets: [
        .target(
            name: "apiclient",
            dependencies: ["Alamofire"], path: "Sources"),
//        .testTarget(
//            name: "MyNetworkingPackageTests",
//            dependencies: ["MyNetworkingPackage"]),
    ]
)
