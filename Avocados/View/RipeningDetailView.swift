//
//  RipeningDetailView.swift
//  Avocados
//
//  Created by guillermo chacon alcala on 19/08/23.
//

import SwiftUI
struct RipeningDetailView: View {
    var ripening:Ripening
    var body: some View {
            ScrollView {
                VStack() {
                 //   ForEach(ripeningData,id: \.id) { item in
                    Image(ripening.image)
                                .resizable()
                                .scaledToFit()
                            //    .aspectRatio(contentMode: .fit)

                                .clipShape(Circle())
                                .frame(width: 290, height: 210, alignment: .center)
                                .background(
                                    Circle()
                                        .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"),Color("ColorGreenLight")]),
                                                             startPoint: .trailing, endPoint: .leading))
                                        .frame(width:300, height:230, alignment:.center)
                            )
                 //   }
                        VStack(alignment:.center){
                            Text("Description")
                                .modifier(TitleModifier())
                            Text(ripening.description)
                                .foregroundStyle(.gray)
                                .font(.system(size: 20))
                            
                            
                            Text("Instructions")
                                .modifier(TitleModifier())
                            Text(ripening.instruction)
                                .foregroundStyle(.gray)
                                .font(.system(size: 20))
                            
                        }.padding()
                        
                    
                }.padding(.all)
                   // .edgesIgnoringSafeArea(.all)

            }
        
    }
}

struct RipeningDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningDetailView(ripening: ripeningData[1])
    }
}
