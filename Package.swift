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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.20.1/RadarSDK.xcframework.zip",
            checksum: "1229eef69814b0b5e4adf15e60c7d86bd3e6aee4d11f1daddc84fa5ef6132dd3" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.20.1/RadarSDKMotion.xcframework.zip",
            checksum: "eca0a70de6feb1541748e0e5bd6fa90f4e0fc333f093dab6cb796508bedfecbf" // RadarSDKMotion checksum
        ),
    ]
)
