//
//  RecipeRatingView.swift
//  Avocados
//
//  Created by guillermo chacon alcala on 13/08/23.
//

import SwiftUI

struct RecipeRatingView: View {
    var recipe:Recipe
    
    var body: some View {
        
        // RATES
        HStack(){
            ForEach(1...(recipe.rating),id:\.self) { item in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(.yellow)
                
            }
        }
        
    }
}

struct RecipeRatingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRatingView(recipe: recipeData[0])
    }
}
