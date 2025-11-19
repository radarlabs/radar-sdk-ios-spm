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
          .library(name: "RadarSDKIndoors", targets: ["RadarSDKIndoors", "_RadarStub"]),
      ],
      targets: [
        .target(name: "_RadarStub"),
        .binaryTarget(
            name: "RadarSDK",
            
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.24.1/RadarSDK.xcframework.zip",
            checksum: "49cf57c48067329d0e88cb427b2dc74194826cb64bdd47639b4e2a1b506aa967" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.24.1/RadarSDKMotion.xcframework.zip",
            checksum: "022f046401b6cf94741a4e56ed959b57e905ea501c934872044dce5eac232df8" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.24.1/RadarSDKIndoors.xcframework.zip",
            checksum: "79e5d0023bdf6c7fa82d97cbd45e31a40a7a5d59b77f87a368b508dfdb212a36" // RadarSDKIndoors checksum
        )
    ]
)
