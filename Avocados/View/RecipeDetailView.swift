//
//  RecipeDetailView.swift
//  Avocados
//
//  Created by guillermo chacon alcala on 13/08/23.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe:Recipe
    var body: some View {
        ScrollView(){
            VStack {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                
                Group{
                    // MARK: - TITLE
                    Text(recipe.title)
                    //       .modifier(TitleModifier())
                    
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(.top,10)
                    
                    
                    // MARK: - RATING
                    RecipeRatingView(recipe: recipe)
                    //COOKING
                    CookingView(recipe: recipe)
                    //INGREDIENTS
                    Text("Ingredients")
                        .modifier(TitleModifier())
                    
                    VStack(alignment:.leading, spacing: 6){
                        ForEach(recipe.ingredients,id: \.self){ item in
                            VStack(alignment:.leading, spacing: 6) {
                                Text(item)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                Divider()
                            }
                        }
                        
                    }
                    // MARK: - INSTRUCTIONS
                    Text("Instructions")
                        .modifier(TitleModifier())
                    ForEach(recipe.instructions, id: \.self){ item in
                        VStack(alignment: .center, spacing: 5) {
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width:42, height: 42, alignment: .center)
                                .imageScale(.large)
                                .font(Font.title.weight(.ultraLight))
                                .foregroundColor(Color("ColorGreenAdaptive"))

                            Text(item)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.system(.body, design: .serif))
                                .frame(minHeight:100)

                        } //VSTACK
                    } //FOR
                } //GROUP
                .padding(.horizontal,24)
                .padding(.vertical,12)
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}
    



struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipeData[0])
    }
}
