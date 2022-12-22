// swift-tools-version:4.0

import PackageDescription

let package = Package(name: "KPin",
                      platforms: [.iOS(.v11)],
                      products: [.library(name: "KPin",
                                          targets: ["KPin"])],
                      targets: [.target(name: "KPin",
                                        path: "KPassCode/KPassCode/KPin",
                                        exclude: ["Info.plist"],
                                        linkerSettings: [])],
                      swiftLanguageVersions: [.v5])

