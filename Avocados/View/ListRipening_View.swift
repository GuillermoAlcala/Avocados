//
//  ListRipening_View.swift
//  Avocados
//
//  Created by guillermo chacon alcala on 26/08/23.
//

import SwiftUI

struct ListRipening_View: View {
    var list:Ripening
   var isPresented:Bool
    var body: some View {
        NavigationStack{
            List(ripeningData,id: \.self.id) { item in
             //   NavigationLink(item.image,value:item.self)
             //       .navigationDestination(for: Ripening.self){val in
                    HStack {
                        NavigationLink(destination: RipeningDetailView(ripness: ripeningData[0])){
                       

                                Image(item.image) //val
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .frame(width: 100, height: 100, alignment: .leading)
                                .background(
                                    Circle()
                                        .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"),Color("ColorGreenLight")]),
                                                             startPoint: .trailing, endPoint: .leading))
                                        .frame(width:110, height:110, alignment:.center)
                                )
                            Text(item.title)
                                .padding()
                        }
                        
                            
                        }
                        
                    }//nav
                }
                
            
            .navigationTitle("Ripening")
            
            
        }
        
    }




struct ListRipening_View_Previews: PreviewProvider {
    static var previews: some View {
        ListRipening_View(list: ripeningData[0], isPresented: false)
    }
}
