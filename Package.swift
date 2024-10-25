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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.18.4/RadarSDK.xcframework.zip",
            checksum: "be6e1a5909d9ce4aa1bc25bfbf541776bd86caaa4e8da086f2001de60e1d4fe0" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.18.4/RadarSDKMotion.xcframework.zip",
            checksum: "938b06bfc1489251733c4716bb046aedd7649f6c0b3cce1910628f4a13dbfbb8" // RadarSDKMotion checksum
        ),
    ]
)
