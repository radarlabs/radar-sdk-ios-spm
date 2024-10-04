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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.18.2/RadarSDK.xcframework.zip",
            checksum: "e38ca4323a613172172189f793576cce15a043ea59c3eaf14ba29916ebcc89b4" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.18.2/RadarSDKMotion.xcframework.zip",
            checksum: "d8a960f5f7eb92f8cc74c4d77b55322a0bf6aa7a90ce76805ee7f5fc9f0eb39b" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKLocationPermission",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.18.2/RadarSDKLocationPermission.xcframework.zip",
            checksum: "" // RadarSDKLocationPermission checksum
        )
    ]
)
