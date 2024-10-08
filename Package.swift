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
            checksum: "5624841e1999c96429bf822a7878be1a65f2acb2f0b1fa83bd64d0e2ecbb6ab1" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.18.2/RadarSDKMotion.xcframework.zip",
            checksum: "d3c6ce12f78178be0d0ba7c654dafe07becb9bcff10597271fbc6e8c13980596" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKLocationPermission",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.18.2/RadarSDKLocationPermission.xcframework.zip",
            checksum: "" // RadarSDKLocationPermission checksum
        )
    ]
)
