//
//  RipenningView.swift
//  Avocados
//
//  Created by guillermo chacon alcala on 16/08/23.
//

import SwiftUI
//HEADER IN THIS FILE IT WILL BE TO MAKE EVERY IMAGE AND
struct RipenningView: View {
    var rip: Ripening
    var star:Int=0
   var hapticImpact=UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModel:Bool=false
    var body: some View {
    /*    ZStack(alignment: .leading){
            Image("background")
                .resizable()
                .scaledToFill()*/
        ScrollView(.horizontal, showsIndicators: false){
                HStack(){
                    //    .frame(width: 100,height: 700)
                    ForEach(ripeningData, id:\.id){item in
                        VStack() {
                            // MARK: - IMAGE
                            Image(item.image)
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .frame(width: 250, height: 210, alignment: .center)
                                .background(
                                    Circle()
                                        .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"),Color("ColorGreenLight")]),
                                                             startPoint: .trailing, endPoint: .leading))
                                        .frame(width:300, height:230, alignment:.center)
                                )
                                .overlay(alignment: .topLeading)
                            {
                                // MARK: - STAGE
                                //         RipeningRatingView(rip: ripeningData[0])
                                
                            }
                            
                            // MARK: - TITLE
                            Text(item.title)
                                .foregroundStyle(.indigo)
                                .modifier(TitleModifier())
                            //    .offset(x:9,y: 3)
                            
                        }//VSTACK
                        
                        .onTapGesture {
                           self.hapticImpact.impactOccurred()
                            self.showModel=true
                        
                        }
                        .sheet(isPresented: self.$showModel){
                            
                            RipeningDetailView(ripening:self.rip)
                                .presentationDetents([.height(360),.medium,.large])
                                //.presentationDetents([.height(700), .medium, .large])
                                .presentationDragIndicator(.automatic)
                        }
                        .padding(.all)
                    }//VS
                    
                }//HStack
                
            }//Scroll
      //  }//ZStack
        .edgesIgnoringSafeArea(.all)
    
        
        
    }
}

struct RipenningView_Previews: PreviewProvider {
    static var previews: some View {
        RipenningView(rip: ripeningData[0],star: 0)
    }
}


// TO DO: RIPENNING DETAIL, SHOW EVERY IMAGE WITH TEXT AND COMPLEMENTS
// ADD: GESTURE

