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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.41.0/RadarSDK.xcframework.zip",
            checksum: "e13981f4c5d18b78f7043b87a713ed426c9bea89242648c30f08bd7e36a14b1f" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.41.0/RadarSDKMotion.xcframework.zip",
            checksum: "ecb832c6c107f60c020ff1c89b347e0f620da9737a03a64eb5be5c1e76e57147" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.41.0/RadarSDKIndoors.xcframework.zip",
            checksum: "f6b3566f7c3a55029edfbeb93ed5008ed1be2102a1070648a031d00840e4f5eb" // RadarSDKIndoors checksum
        )
    ]
)
