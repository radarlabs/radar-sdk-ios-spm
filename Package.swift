// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "RadarSDK",
    platforms: [
        .iOS(.v10)
    ],
    products: [
          .library(name: "RadarSDK", targets: ["RadarSDK", "_RadarStub"]),
          .library(name: "RadarSDKMotion", targets: ["RadarSDKMotion", "_RadarStub"]),
          .library(name: "RadarSDKLocationPermission", targets: ["RadarSDKLocationPermission", "_RadarStub"])
      ],
      targets: [
        .target(name: "_RadarStub"),
        .binaryTarget(
            name: "RadarSDK",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.19.0-beta.1/RadarSDK.xcframework.zip",
            checksum: "40fb8e9949cfd8268c90d6d7ce90b326d97109daf5d9badca9b6f11632154853" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.19.0-beta.1/RadarSDKMotion.xcframework.zip",
            checksum: "2b8712bf3491e50552d51cdba6541f433b5d1c649f301e4f73dc7c6b10c1bb6e" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKLocationPermission",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.19.0-beta.1/RadarSDKLocationPermission.xcframework.zip",
            checksum: "" // RadarSDKLocationPermission checksum
        )
    ]
)
