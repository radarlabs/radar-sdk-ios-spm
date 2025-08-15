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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.12/RadarSDK.xcframework.zip",
            checksum: "cd1c8cb527b1582929171843b48c4484457d97c17e6f826ab556dcc7a81143ac" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.12/RadarSDKMotion.xcframework.zip",
            checksum: "6a78704ce2b158ad5f08cac5ce5980ea72ba4533ee83c176e089b10ad1821962" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.12/RadarSDKIndoors.xcframework.zip",
            checksum: "d2f0dd15b500d76f1d6d9a33ba44d8968d40638c2a24b3cb56c5fa8df79bb77c" // RadarSDKIndoors checksum
        )
    ]
)
