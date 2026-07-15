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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.38.0/RadarSDK.xcframework.zip",
            checksum: "8ee64edcd7b4391e90a0302bfcf158d717a5b337834bfded8f9b7097c5612b75" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.38.0/RadarSDKMotion.xcframework.zip",
            checksum: "c5c2f5f007d0ae03f7eeefa277839fde826d6eb168834911228d12e0294ab35e" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.38.0/RadarSDKIndoors.xcframework.zip",
            checksum: "c7e8e36f55ebcfe2c3a242eee086cd4a58c902e719c7744ab0839bbb70e3791d" // RadarSDKIndoors checksum
        )
    ]
)
