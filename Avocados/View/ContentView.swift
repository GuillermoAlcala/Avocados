//
//  ContentView.swift
//  Avocados
//
//  Created by guillermo chacon alcala on 31/07/23.
//

import SwiftUI

struct ContentView: View {
    var headers:[Header]=headersData
    /*Header es el modelo,
     headerData es donde vienen los datos,
     headers es la variable que iterará cada elemento en el foreach
     */
    
    var facts:[Fact]=factData
    var recipes:[Recipe]=recipeData
    var body: some View {
        ScrollView(.vertical, showsIndicators:false){
            VStack(alignment:.center, spacing: 20){
                // MARK: - HEADER
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack(alignment:.top, spacing: 0) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                    }
                }
                // MARK: - DISHES
                Text("Avocado Dishes")
                    .modifier(TitleModifier())
                DishesView()
                    .frame(maxWidth:640)
                
                // MARK: - AVOCADO FACTS
                Text("Avocado Facts")
                    .modifier(TitleModifier())
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment:.top, spacing: 50){
                        ForEach(facts){ factsItem in
                            FactsView(fact:factsItem)
                            
                        }
                    }
                    .padding(.vertical)
                    .padding(.leading,60)
                    .padding(.trailing,20)
                }
                
                // MARK: - RECIPES
                Text("Avocado Recipes")
                    .modifier(TitleModifier())
                VStack(alignment:.center, spacing: 20) {
                        ForEach(recipes){recipesItem in
                            RecipeCardView(recipe: recipesItem)
                        }
                    
                    
                    
                }
                .frame(maxWidth:640)
                .padding(.horizontal)
                
                // MARK: - FOOTER
                VStack(alignment:.center, spacing: 20){
                    Text("All about avocados")
                        .modifier(TitleModifier())
                        //.font(.system(.title, design: .serif))
                        //.fontWeight(.bold)
                        //.foregroundColor(Color("ColorGreenAdaptive"))
                        //.padding(8)
                    Text("Everything you wanted to know about avocados but were too afraid to ask")
                        .modifier(SubtitleModifier())
                      //  .font(.system(.body, design: .serif))
                      //  .multilineTextAlignment(.center)
                      //  .foregroundColor(.gray)
                      //  .frame(minHeight:60)
                    
                }
                
                
                .frame(maxWidth:640)
                .padding(.bottom,85)
                .padding()
                
            }
            
        }
        .edgesIgnoringSafeArea(.top) // me quita el espacio en el top
    }
}

struct TitleModifier:ViewModifier{
    func body(content: Content) -> some View {
        content
        .font(.system(.title, design: .serif))
        .fontWeight(.bold)
        .foregroundColor(Color("ColorGreenAdaptive"))
        .padding(8)
    }
}

struct SubtitleModifier:ViewModifier{
    func body(content: Content)->some View{
        content
            .font(.system(.body, design: .serif))
            .multilineTextAlignment(.center)
            .foregroundColor(.gray)
            .frame(minHeight:60)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers:headersData,facts: factData)
    }
}
