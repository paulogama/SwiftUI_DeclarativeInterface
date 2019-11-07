//
//  ContentView.swift
//  SwiftUI_DeclarativeInterface
//
//  Created by Paulo Gama on 06/11/19.
//  Copyright © 2019 GamaPaulo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let cocoaTalks = CocoaTalk.all()

    var body: some View {
        NavigationView {
            List(cocoaTalks, id: \.id) { cocoaTalk in
                NavigationLink(destination: CocoaDetail(cocoaTalk: cocoaTalk)) {
                    CocoaCell(cocoaTalk: cocoaTalk)
                }
            }
        .navigationBarTitle("Cocoa Talks Recife")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
