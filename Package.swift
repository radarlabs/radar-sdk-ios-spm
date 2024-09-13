// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "RadarSDK",
    platforms: [
        .iOS(.v10)
    ],
    products: [
          .library(name: "RadarSDK", targets: ["RadarSDK", "_RadarStub"]),
          .library(name: "RadarSDKMotion", targets: ["RadarSDKMotion", "_RadarStub"])
      ],
      targets: [
        .target(name: "_RadarStub"),
        .binaryTarget(
            name: "RadarSDK",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.18.0/RadarSDK.xcframework.zip",
            checksum: "067a224c0372f3b6326648e3e5bcf2baf6f0e4f64ff30d0007a44ca884c2b849" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.18.0/RadarSDKMotion.xcframework.zip",
            checksum: "54912ce586c831211332409d0c6f4a02fc5ef3296f9268b9edd313dff1122d47" // RadarSDKMotion checksum
        )
    ]
)
