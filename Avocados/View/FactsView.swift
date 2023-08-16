//
//  FactsView.swift
//  Avocados
//
//  Created by guillermo chacon alcala on 10/08/23.
//

import SwiftUI

struct FactsView: View {
    var fact:Fact
    var body: some View {
        // MARK: - DATA
        ZStack {
            Text(fact.content)
                .padding(.leading, 55)
                .padding(.trailing, 10)
                .padding(.vertical,3)
                .frame(width: 300, height:135, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"),Color("ColorGreenLight")]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(12)
                .cornerRadius(16)
                .multilineTextAlignment(.leading)
                .font(.footnote)
                .foregroundColor(.white)
            
            //
            
            // MARK: - IMAGE
            Image(fact.image)
                .resizable()
                .frame(width: 66, height: 66, alignment: .center)
                .clipShape(Circle())
                .background(
                    Circle()
                        .fill(Color.white)
                        .frame(width: 74, height:74, alignment:.center)
                )
            
                .background(
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"),Color("ColorGreenLight")]),
                                             startPoint: .trailing, endPoint: .leading))
                        .frame(width:82, height:82, alignment:.center)
                    
                )
            
                .background(
                    Circle()
                        .fill(Color("ColorAppearanceAdaptive"))
                        .frame(width: 90, height: 90, alignment: .center)
                )
                .offset(x:-150)
        }
    }
}

struct FactsView_Previews: PreviewProvider {
    static var previews: some View {
        FactsView(fact: factData[0])
            .previewLayout(.fixed(width: 414, height: 200))

    }
}
