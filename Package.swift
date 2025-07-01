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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.7/RadarSDK.xcframework.zip",
            checksum: "2e2b3e6d7e68614e880fc8e1e6828faa1fbdb58ffcb2284abdf510cd1b77f0be" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.7/RadarSDKMotion.xcframework.zip",
            checksum: "bc053b49b55b210174c715ad61475bffbf0392c02239ae7fd4b1ff4cb4b1a128" // RadarSDKMotion checksum
        ),
    ]
)
