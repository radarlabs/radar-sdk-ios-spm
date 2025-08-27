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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.24.0-beta.3/RadarSDK.xcframework.zip",
            checksum: "22b1f66dd117455c4862bde2b4b32086a309f28a70038785204c9cb47959f452" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.24.0-beta.3/RadarSDKMotion.xcframework.zip",
            checksum: "fa5af44e9a1c9446ed48b6a88206a3faf92768725f022e648f34804269ce9e1c" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.24.0-beta.3/RadarSDKIndoors.xcframework.zip",
            checksum: "dc82402e3692bcf18642cc139852591c02915f071e3fbbd94a1808233ee80066" // RadarSDKIndoors checksum
        )
    ]
)
