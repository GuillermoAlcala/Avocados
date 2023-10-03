//
//  RipeningDetailView.swift
//  Avocados
//
//  Created by guillermo chacon alcala on 19/08/23.
//

import SwiftUI
struct RipeningDetailView: View {
    var ripness:Ripening
    
    var body: some View {
                   // .edgesIgnoringSafeArea(.all)
                VStack(alignment: .center) {
                    Text(ripness.title)
                    
                
           }
        
    }
}

struct RipeningDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningDetailView(ripness: ripeningData[0])
    }
}

/*struct ExtractedView: View {
    var ripeningStages: [Ripening] = ripeningData
    var body: some View {
        VStack{
            //   ForEach(ripeningData,id: \.id) { item in
            Image(ripeningStages)
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
                //        ForEach(ripeningData){ item in
                
                Text("Description")
                    .modifier(TitleModifier())
                Text(ripeningStages.description)
                    .foregroundStyle(.gray)
                    .font(.system(size: 20))
                
                //    }
                
                Text("Instructions")
                    .modifier(TitleModifier())
                Text(ripeningStages.instruction)
                    .foregroundStyle(.gray)
                    .font(.system(size: 20))
                
            }.padding()
            
            
        }.padding(.all)
    }
}
*/
