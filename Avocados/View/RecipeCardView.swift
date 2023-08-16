//
//  RecipeCardView.swift
//  Avocados
//
//  Created by guillermo chacon alcala on 12/08/23.
// .sheet(isPresented: $gotoCart){Cart_View()}

import SwiftUI

struct RecipeCardView: View {
    var recipe:Recipe
    var hapticImpact=UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModel:Bool=false
    var body: some View {
        VStack(alignment:.leading, spacing: 0) {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        VStack() {
                            Image(systemName: "bookmark.fill")
                                .font(Font.title.weight(.light))
                                .imageScale(.small)
                                .foregroundColor(.green)
                            //.shadow(color:Color("ColorTransparentLight"),radius: 2, x:0, y:0)
                                .padding(.trailing,20)
                                .padding(.top,22)
                            Spacer()
                        }
                    }
                    
                )
            VStack(alignment:.leading, spacing: 12){
                // TITLE
                Text(recipe.title)
                    .font(.system(.title,design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                // HEADLINE
                Text(recipe.headline)
                    .font(.system(.body,design:.serif))
                    .foregroundColor(.gray)
                    .italic()
                // RATES
                RecipeRatingView(recipe: recipe)
                // COOKING
               CookingView(recipe: recipe)
                
                
                .font(.footnote)
                .foregroundColor(Color.gray)
            }
                .padding()
                .padding(.bottom,12)
        }
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showModel=true
        
        }
        .sheet(isPresented: self.$showModel){
            
            RecipeDetailView(recipe: self.recipe)
                .presentationDetents([.height(350),.medium])
                //.presentationDetents([.height(700), .medium, .large])
                .presentationDragIndicator(.automatic)
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color:Color("ColorBlackTransparentLight"),radius: 2, x:0, y:0)
        
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipeData[0])
            .previewLayout(.sizeThatFits)
    }
}
