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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.39.0/RadarSDK.xcframework.zip",
            checksum: "63fb57c0b5931731359d4e6e1bc35ce3c1edb120bdefb78038021cec63aea344" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.39.0/RadarSDKMotion.xcframework.zip",
            checksum: "9b884a03db40d06624574fd231c412d75d1405c0ffa3e03d753a98e6f837bfb0" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.39.0/RadarSDKIndoors.xcframework.zip",
            checksum: "dd07f10c54fd1cbe826ce6a28423269f85c55332410e4407d00bce1fed4a8c90" // RadarSDKIndoors checksum
        )
    ]
)
