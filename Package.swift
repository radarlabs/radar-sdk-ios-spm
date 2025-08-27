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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.24.0-beta.2/RadarSDK.xcframework.zip",
            checksum: "cb96400f36ad2b1bb6b2539325227d53d1b5e94bfaecf4eba8abc6b6fa96b82f" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.24.0-beta.2/RadarSDKMotion.xcframework.zip",
            checksum: "5312ff8628d9a0b4c517f4fa18b762b8fe5e3b6e57c66bb436d8773ad6558bec" // RadarSDKMotion checksum
        )
    ]
)
