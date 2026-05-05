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
            
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.32.0/RadarSDK.xcframework.zip",
            checksum: "c86a1f53ce842322a0f81452bbdeac3de4cffd04e3ecd7491df0a3244d6807b7" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.32.0/RadarSDKMotion.xcframework.zip",
            checksum: "33b23a52968a2c0443c8be39e5f9cdfdb8588d710a843c37ba5a6ed9b60ce753" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.32.0/RadarSDKIndoors.xcframework.zip",
            checksum: "abaec3fb1b0ff773722e73dac8c05e05aab5830b6afb66aff3ed084d8002bbdc" // RadarSDKIndoors checksum
        )
    ]
)
