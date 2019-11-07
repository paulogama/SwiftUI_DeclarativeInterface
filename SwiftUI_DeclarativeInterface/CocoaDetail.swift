//
//  CocoaDetail.swift
//  SwiftUI_DeclarativeInterface
//
//  Created by Paulo Gama on 06/11/19.
//  Copyright © 2019 GamaPaulo. All rights reserved.
//

import SwiftUI

struct CocoaDetail: View {
    let cocoaTalk: CocoaTalk
    @State private var zoomed = false

    var body: some View {
        VStack{
            Image(cocoaTalk.thumb)
            .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        self.zoomed.toggle()
                    }
            }

            Text(cocoaTalk.name)
            Text(cocoaTalk.place)
        }
        .navigationBarTitle(Text(cocoaTalk.name), displayMode: .inline)
    }
}

struct CocoaDetail_Previews: PreviewProvider {
    static var previews: some View {
        CocoaDetail(cocoaTalk: CocoaTalk(name: "Cocoa Talks 6", date: "12/11/2019", place: "ThoughtWorks", thumb: "fourth"))
    }
}
