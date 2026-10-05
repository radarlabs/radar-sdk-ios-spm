// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "RadarSDK",
    platforms: [
        .iOS(.v15)
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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.43.0/RadarSDK.xcframework.zip",
            checksum: "87b449d7239afa687cdd0c553a009e75167539204ff30954cfd58e043dd02474" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.43.0/RadarSDKMotion.xcframework.zip",
            checksum: "925692f9b322c587cc6aa3896082fb320bc9476c9c2640e1fa02ea486e80f928" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.43.0/RadarSDKIndoors.xcframework.zip",
            checksum: "a694c668ec79ac4f2d552331604079df69389a06b3c9b43b4beba7e713737581" // RadarSDKIndoors checksum
        )
    ]
)
