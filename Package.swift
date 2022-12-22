// swift-tools-version:5.0

import PackageDescription

let package = Package(name: "KPassCode",
                      platforms: [.iOS(.v11)],
                      products: [.library(name: "KPassCode",
                                          targets: ["KPassCode"])],
                      targets: [.target(name: "KPassCode",
                                        path: "KPassCode/KPassCode/KPin",
                                        linkerSettings: [])],
                      swiftLanguageVersions: [.v5])

