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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.42.0/RadarSDK.xcframework.zip",
            checksum: "dc8f46de70ce05c04c3ec8a9777d404bf53de61ae663de01b61d4ca6639175fb" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.42.0/RadarSDKMotion.xcframework.zip",
            checksum: "0ebba7eebb30e019bb9a994b0f0f61211513e200711ea69208cde18b7670aed6" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.42.0/RadarSDKIndoors.xcframework.zip",
            checksum: "feefd00a6e835198cbafa4967315fd40052fec4cab4b6d30d83afa8e8b4bbca6" // RadarSDKIndoors checksum
        )
    ]
)
