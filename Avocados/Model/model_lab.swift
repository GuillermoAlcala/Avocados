//
//  model_lab.swift
//  Avocados
//
//  Created by guillermo chacon alcala on 29/08/23.
//

import Foundation
struct Item: Identifiable {
    let id = UUID()
    let title: String
    let description: String
}

class ItemStore: ObservableObject {
    @Published var items: [Item] = [
        Item(title: "Item 1", description: "Description for Item 1"),
        Item(title: "Item 2", description: "Description for Item 2"),
        // Add more items as needed
    ]
}
