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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.40.0/RadarSDK.xcframework.zip",
            checksum: "68e696b069017a6c6775b2fb7644e43847ca4e830ffd4a1d46f490b0c1c61b08" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.40.0/RadarSDKMotion.xcframework.zip",
            checksum: "1a66121909f0b9782992fd7cad05f3fb91b7fb52fbd16877614f2513710895c5" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.40.0/RadarSDKIndoors.xcframework.zip",
            checksum: "31d6003a94d2de8ac12f4570b0b7ff07c0e6b0561bce9eba06894752a20c19d6" // RadarSDKIndoors checksum
        )
    ]
)
