//
//  CookingView.swift
//  Avocados
//
//  Created by guillermo chacon alcala on 13/08/23.
//

import SwiftUI

struct CookingView: View {
    var recipe:Recipe
    var body: some View {
        HStack(alignment:.center, spacing: 12){
            HStack(alignment:.center, spacing: 2){
                Image(systemName:"person.2")
                Text("Serves:\(recipe.serves)")
            }
            HStack(alignment:.center, spacing: 2){
                Image(systemName:"clock")
                Text("Prep:\(recipe.preparation)")
            }
            
            HStack(alignment:.center, spacing: 2){
                Image(systemName:"flame")
                Text("Cooking:\(recipe.serves)")
            }
            
        }    }
}

struct CookingView_Previews: PreviewProvider {
    static var previews: some View {
        CookingView(recipe: recipeData[0])
    }
}
