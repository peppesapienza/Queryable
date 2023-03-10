// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Queryable",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Queryable",
            targets: ["Queryable"])
    ],
    dependencies: [
        .package(url: "https://github.com/firebase/firebase-ios-sdk", branch: "master")
    ],
    targets: [
        .target(
            name: "Queryable",
            dependencies: []),
        .target(
            name: "FirestoreQueryable",
            dependencies: ["Queryable"]
        ),
        .testTarget(
            name: "QueryableTests",
            dependencies: ["Queryable"]),
    ]
)
