//
//  Package.swift
//  KPassCode
//
//  Created by Harshit Daftary on 22/12/22.
//  Copyright © 2022 Konstant info Solutions Pvt. Ltd. All rights reserved.
//
// swift-tools-version:4.0

import PackageDescription

let package = Package(name: "KPin",
                      platforms: [.iOS(.v11)],
                      products: [.library(name: "KPin",
                                          targets: ["KPin"])],
                      targets: [.target(name: "KPin",
                                        path: "KPassCode/KPin",
                                        exclude: ["Info.plist"],
                                        linkerSettings: [])],
                      swiftLanguageVersions: [.v5])

