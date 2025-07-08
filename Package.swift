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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.22.0-beta.4/RadarSDK.xcframework.zip",
            checksum: "7c33ed51e8cdfbe2c265a76ae7cda737e3d9605e49f6eddd5c6458ed085e8daf" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.22.0-beta.4/RadarSDKMotion.xcframework.zip",
            checksum: "2fd0c52f6c4f1372587007c9f693a7569f221e988c40d608a3a74ffc3245dd79" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.22.0-beta.4/RadarSDKIndoors.xcframework.zip",
            checksum: "7c48917ae4be2ee97bd5f18b36c4162478778ab9afb271edaa46d0317e05d277" // RadarSDKIndoors checksum
        ),
    ]
)
