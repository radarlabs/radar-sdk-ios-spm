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
            
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.27.0/RadarSDK.xcframework.zip",
            checksum: "e0ce057eee939f7ea1eb34f05e94b79518217bee4b9bf15526645fb2d65380ea" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.27.0/RadarSDKMotion.xcframework.zip",
            checksum: "23eac582190ce494bf5f29eeafe55f5b8f5dbd3ea276bf0c8b979498e4396d9e" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.27.0/RadarSDKIndoors.xcframework.zip",
            checksum: "ce293a7e19dc203a32d64d358ba4bd56deaa12b58f93a77cbdbe13a2edfb62b1" // RadarSDKIndoors checksum
        )
    ]
)
