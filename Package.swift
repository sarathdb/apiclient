// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "MyNetworkingPackage",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "MyNetworkingPackage",
            targets: ["MyNetworkingPackage"]),
    ],
    dependencies: [
        // Example: Alamofire as a dependency
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.6.0")
    ],
    targets: [
        .target(
            name: "MyNetworkingPackage",
            dependencies: ["Alamofire"], path: "Sources"),
//        .testTarget(
//            name: "MyNetworkingPackageTests",
//            dependencies: ["MyNetworkingPackage"]),
    ]
)
