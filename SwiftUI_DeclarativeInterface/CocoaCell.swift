//
//  CocoaCell.swift
//  SwiftUI_DeclarativeInterface
//
//  Created by Paulo Gama on 06/11/19.
//  Copyright © 2019 GamaPaulo. All rights reserved.
//

import Foundation
import SwiftUI

struct CocoaCell: View {
    let cocoaTalk: CocoaTalk
    
    var body: some View {
        HStack {
            Image(cocoaTalk.thumb)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(16)

            VStack(alignment: .leading) {
                Text(cocoaTalk.name)
                    .fontWeight(.black)
                Text(cocoaTalk.place)
            }
        }
    }
}
