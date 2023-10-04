//
//  Ripening_OriginalView.swift
//  Avocados
//
//  Created by guillermo chacon alcala on 03/10/23.
//

import SwiftUI

struct Ripening_OriginalView: View {
    @State private var slideAnimation:Bool=false
     var ripening:Ripening
    //@State private var offset_:CGFloat=10.0
    var body: some View {
        // HEADER
        VStack{
            Image(ripening.image)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
            
                .background(Circle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width:110,height: 110,alignment: .center)
                ) // contorno verde
            
                .background(Circle()
                    .fill(Color("ColorAppearanceAdaptive"))
                    .frame(width:120,height: 120,alignment: .center)
                ) // contorno blanco
            
                .zIndex(1)
                .animation(Animation.easeInOut(duration: 1),value: slideAnimation) // generar la variable y asignarla al parámetro value
                .offset(y:slideAnimation ? 55 : -55)
                // si slideAnimation es true ponle 55, en caso contrario -55
            
            
            VStack(alignment:.center, spacing: 10){
                
                // STAGE
                VStack(alignment:.center, spacing: 0) {
                    Text(ripening.stage)
                        .font(.system(.largeTitle,design: .serif))
                        .bold()
                    Text("STAGE")
                        .font(.system(.body,design: .serif))
                        .fontWeight(.heavy)
                    
                }
                .foregroundColor(Color("ColorGreenMedium"))
                .padding(.top,65)
                .frame(width:180)
                
                // TITLE
                Text(ripening.title)
                    .font(.system(.title,design: .serif))
                    .fontWeight(.bold)
                    .foregroundStyle(Color("ColorGreenMedium"))
                    .padding(.vertical,12)
                    .padding(.horizontal,0)
                    .frame(width:220)
                    .background(RoundedRectangle(cornerRadius: 12)
                        .fill(LinearGradient(gradient:
                                                Gradient(colors:
                                                            [Color.white,Color("ColorGreenLight")]),
                                             startPoint: .top, endPoint: .bottom))
                                
                            .shadow(color:Color("ColorBlackTransparentLight"),radius: 6, x: 0, y: 6)
                    )
                
                
                Spacer()
                // DESCRIPTION
                Text(ripening.description)
                    .foregroundColor(Color("ColorGreenDark"))
                    .fontWeight(.bold)
                    .lineLimit(nil)
                Spacer()
                // Ripeness
                Text(ripening.ripeness)
                    .foregroundColor(.white)
                    .font(.system(.callout,design:.serif))
                    .fontWeight(.bold)
                    .shadow(radius: 3)
                    .padding(.vertical)
                    .padding(.horizontal,0)
                    .frame(width:185)
                    .background(
                        RoundedRectangle(cornerRadius: 12).fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"),Color("ColorGreenDark")]),
                                                                               startPoint: .top, endPoint: .bottom))
                        .shadow(color: Color("ColorBlackTransparentLight"),
                                radius: 6, x: 0, y: 6))
                
                
                // INSTRUCTION
                Text(ripening.instruction)
                    .font(.system(.footnote))
                    .foregroundColor(Color("ColorGreenLight"))
                    .fontWeight(.bold)
                    .lineLimit(3)
                    .frame(width: 160)
                Spacer()
            } // CONTENT VSTACK
            .zIndex(0)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .frame(width:260, height:485,alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors:[Color("ColorGreenLight"),Color("ColorGreenMedium")]),
                                       startPoint: .top, endPoint: .bottom))
            
            
            .cornerRadius(20)
        } // HEADER VSTACK
        .edgesIgnoringSafeArea(.all)
        .onAppear(perform:{
            self.slideAnimation.toggle()
        })
    }
}

struct Ripening_OriginalView_Previews: PreviewProvider {
    static var previews: some View {
        Ripening_OriginalView(ripening: ripeningData[1])
    }
}
