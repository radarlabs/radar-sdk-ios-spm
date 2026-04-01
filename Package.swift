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
            
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.28.2/RadarSDK.xcframework.zip",
            checksum: "25fc6f4c8a14827807af2529d1f8391a96e7d483144aca8a6c5950714201de8f" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.28.2/RadarSDKMotion.xcframework.zip",
            checksum: "db273fcdd7830e5e68d73bdfeaeeb1cbecd85206e2ffc77cdcf8bad492ba5403" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.28.2/RadarSDKIndoors.xcframework.zip",
            checksum: "c546e1628e0d08d8f5fd67213755ee3b5508bda6f3bd339f2a8b49fd56b1834c" // RadarSDKIndoors checksum
        )
    ]
)
