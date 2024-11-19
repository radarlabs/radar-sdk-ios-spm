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
      ],
      targets: [
        .target(name: "_RadarStub"),
        .binaryTarget(
            name: "RadarSDK",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.19.1/RadarSDK.xcframework.zip",
            checksum: "0468f70a01e32cc4477cb8b1a7740c94fe8420624a83b36cc63c71d85f45c595" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.19.1/RadarSDKMotion.xcframework.zip",
            checksum: "92e179bbde1b69d7e1e75152afec66632196e6eb2dcedb2e20769058874bae18" // RadarSDKMotion checksum
        ),
    ]
)
