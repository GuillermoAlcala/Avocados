//
//  RipenningView.swift
//  Avocados
//
//  Created by guillermo chacon alcala on 16/08/23.
//

import SwiftUI
struct RipenningView: View {
    var rip: [Ripening]=ripeningData
    var tap:Bool=false
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    //@ObservedObject var ripp = RipeningStore()
    //@State private var selectedItem: Ripening? = nil
    @State private var showModel = false
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 20) {
                ForEach(ripeningData.self,id: \.id) { item in
                    VStack {
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 250, height: 210)
                            .background(
                                Circle()
                                    .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]),
                                                         startPoint: .trailing, endPoint: .leading))
                                    .frame(width: 300, height: 230)
                            )
                        
                        Text(item.title)
                            .foregroundColor(.indigo)
                            .font(.title)
                            .fontWeight(.bold)
                    }
                }
            }
            .onTapGesture {
                
                    hapticImpact.impactOccurred().self
                    showModel.toggle()
                
            }
            .padding()
            .sheet(isPresented: $showModel) {
                RipenningStagesView(ripeningStagess:ripeningData[0])
                    .presentationDetents([.height(360), .medium, .large])
                    .presentationDragIndicator(.automatic)
            }
    
        }
        .edgesIgnoringSafeArea(.all)
    }
}


struct RipenningView_Previews: PreviewProvider {
    static var previews: some View {
        RipenningView(rip: ripeningData)
    }
}

    
