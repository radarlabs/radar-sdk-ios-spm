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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.37.0/RadarSDK.xcframework.zip",
            checksum: "0bc012ab6e753c200a1100e6607d7cc61ffa902e8a069b9e528f97447205f4f5" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.37.0/RadarSDKMotion.xcframework.zip",
            checksum: "cd60eb9833f60cbae7b660a2adbb2eda828dd35f769115212458d0b4bec30359" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.37.0/RadarSDKIndoors.xcframework.zip",
            checksum: "d29d3576b2aed4e2f5e26212dc83ee497ed3dec7ce0a3afb15bd446593a30604" // RadarSDKIndoors checksum
        )
    ]
)
