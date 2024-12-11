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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.19.5/RadarSDK.xcframework.zip",
            checksum: "f61a670b54c23d39ce3a5a42abf75ed0c2911c39843d70c9112005624c914f76" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.19.5/RadarSDKMotion.xcframework.zip",
            checksum: "30b9bcafb57b5e6d51711f4a95c45fd4a1810ed174f724e940a13f296f584ac1" // RadarSDKMotion checksum
        ),
    ]
)
