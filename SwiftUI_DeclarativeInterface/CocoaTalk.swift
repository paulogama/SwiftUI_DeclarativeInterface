//
//  CocoaTalk.swift
//  SwiftUI_DeclarativeInterface
//
//  Created by Paulo Gama on 06/11/19.
//  Copyright © 2019 GamaPaulo. All rights reserved.
//

import Foundation

struct CocoaTalk {
    let id = UUID()
    let name: String
    let date: String
    let place: String
    let thumb: String
}

extension CocoaTalk {
    static func all() -> [CocoaTalk] {
        return [
            CocoaTalk(name: "Cocoa Talks 1", date: "05/10/2017", place: "Cesar", thumb: "first"),
            CocoaTalk(name: "Cocoa Talks 2", date: "10/12/2017", place: "Porto Digital", thumb: "second"),
            CocoaTalk(name: "Cocoa Talks 3", date: "06/01/2018", place: "Concrete", thumb: "third"),
            CocoaTalk(name: "Cocoa Talks 4", date: "26/03/2018", place: "ThoughtWorks", thumb: "fourth")
        ]
    }
}
