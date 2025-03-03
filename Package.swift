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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.2/RadarSDK.xcframework.zip",
            checksum: "f4c5e99828969140ce60df1299eaea196fdc561bc5072f31a36bd83cbc90cf36" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.2/RadarSDKMotion.xcframework.zip",
            checksum: "1b1c3fc362576d29e4d723ca3e955649e2f750e04b8037b4ef061fe5a2cd38ce" // RadarSDKMotion checksum
        ),
    ]
)
