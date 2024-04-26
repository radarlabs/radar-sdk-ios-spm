// swift-tools-version:5.6

import PackageDescription


let radarXCFramework = Target.binaryTarget(
  name: "RadarSDK",
  url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.9.14/RadarSDK.xcframework.zip",
  checksum: "bbf22af28622881220a85b6698b0e560da49a54ad184f35509e328390ecc8517")

let package = Package(
    name: "RadarSDK",
    platforms: [
        .iOS(.v10)
    ],
  products: [.library(name: "RadarSDK", targets: ["RadarSDK", "_RadarStub"])],
  targets: [
    radarXCFramework,
    .target(name: "_RadarStub"),
  ]
)
