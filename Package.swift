// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "Moya",
    products: [
        .library(name: "Moya", targets: ["Moya"]),
        .library(name: "RxMoya", targets: ["RxMoya"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "4.1.0")),
        .package(url: "https://github.com/antitypical/Result.git", .upToNextMajor(from: "4.1.0")),
        .package(url: "https://github.com/giovanepossebon/RxSwift.git", from: "4.5.1")
    ],
    targets: [
         .target(
            name: "Moya",
            dependencies: [
                "Alamofire",
                "Result"],
            exclude: [
                "Tests",
                "Sources/Supporting Files",
                "Examples"]),
        .target(
            name: "RxMoya",
            dependencies: [
                "Moya",
                "RxSwift"],
            exclude: [
                "Tests",
                "Sources/Supporting Files",
                "Examples"])
    ]
)
