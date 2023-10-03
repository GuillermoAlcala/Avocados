//
//  contento.swift
//  Avocados
//
//  Created by guillermo chacon alcala on 29/08/23.
//

import SwiftUI

struct contento: View {
    @ObservedObject var itemStore = ItemStore()
    @State private var selectedItem: Item? = nil
    
    var body: some View {
        List(itemStore.items) { item in
            Button(action: {
                selectedItem = item
            }) {
                header(item: item)
            }
        }
        .sheet(item: $selectedItem) { item in
            detalle(item: item)
        }
    }
}

struct contento_Previews: PreviewProvider {
    static var previews: some View {
        contento()
    }
}
