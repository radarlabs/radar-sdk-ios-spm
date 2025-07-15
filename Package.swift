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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.9/RadarSDK.xcframework.zip",
            checksum: "e6ccaafcf80a9449d8eb784e17689b27d40d1011213aea191838f103c5b2b630" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.9/RadarSDKMotion.xcframework.zip",
            checksum: "d59c608f52cd65b3806921da4b05710e636d1c088dc9fd29203c2b3ddce288d5" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.9/RadarSDKIndoors.xcframework.zip",
            checksum: "" // RadarSDKIndoors checksum
        ),
    ]
)
