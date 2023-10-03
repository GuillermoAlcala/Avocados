//
//  detalle.swift
//  Avocados
//
//  Created by guillermo chacon alcala on 29/08/23.
//

import SwiftUI
struct detalle: View {
    var item: Item
    
    var body: some View {
        VStack {
            Text(item.title)
                .font(.title)
            Text(item.description)
                .font(.body)
        }
        .padding()
    }
}
