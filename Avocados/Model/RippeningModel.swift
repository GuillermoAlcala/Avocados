//
//  RippeningView.swift
//  Avocados
//
//  Created by guillermo chacon alcala on 19/08/23.
//

import SwiftUI
// MARK: RIPENING MODEL

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness:String
    var instruction:String

}

