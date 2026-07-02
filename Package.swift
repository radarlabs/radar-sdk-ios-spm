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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.37.1/RadarSDK.xcframework.zip",
            checksum: "cd9044afc6f59f2254bacf81c7219472826e327e1d394f91ba81ecb85c35a085" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.37.1/RadarSDKMotion.xcframework.zip",
            checksum: "c643ac47014912a33b46f83002b5c9f1991ffb5e9084b350ccd468b74101f065" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.37.1/RadarSDKIndoors.xcframework.zip",
            checksum: "155ecac007e733d47a424d908c651f8e31da885be1f68141a6d8d293e6b8d930" // RadarSDKIndoors checksum
        )
    ]
)
