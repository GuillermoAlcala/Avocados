//
//  SettingsView.swift
//  Avocados
//
//  Created by guillermo chacon alcala on 01/08/23.
//


import SwiftUI

struct SettingsView: View {
    @State private var enabledNotifications:Bool=false
    @State private var backgroundRefresh:Bool=false
    
    var body: some View {
            VStack {
                VStack(alignment:.center, spacing: 6){
                    if backgroundRefresh==false{
                        Image("avocado")
                            .resizable()
                            .scaledToFit()
                            .frame(width:100,height: 100, alignment:.center)
                            .padding(.top)
                        
                    } else {
                        Image("Gozila")
                            .resizable()
                            .scaledToFill()
                            .edgesIgnoringSafeArea(.top)
                    }
                    Text("A lot of Guacamole")
                        .modifier(TitleModifier())
                        .padding()
                    
                    Form{
                        // MARK: - SECTION 1
                        Section(header: Text("General Setting")){
                            if enabledNotifications==false{
                                Toggle(isOn: $enabledNotifications){
                                    Text("Disable")
                                }.tint(.red)
                            } else {
                                Toggle(isOn: $enabledNotifications){
                                    Text("Enable")
                                }.tint(.indigo)
                                
                                
                            }
                            if backgroundRefresh==false {
                                Toggle(isOn: $backgroundRefresh){
                                    Text("Off")
                                    
                                }
                            } else {
                                Toggle(isOn: $backgroundRefresh){
                                    Text("On")
                                    
                                    /*  Section(header:Text("Photos")){
                                     
                                     Image("Gozila")
                                     .resizable()
                                     .scaledToFit()
                                     .frame(width:100,height: 100, alignment:.center)
                                     .padding(.top)
                                     
                                     }*/
                                }

                            }
                        }
                        // MARK: - SECTION 2
                        Section(header:Text("Applications")){
                            if enabledNotifications==true {
                                HStack {
                                    Text("Producto").foregroundColor(.gray)
                                    Spacer()
                                    Text("Guacamole")
                                }
                                HStack{
                                    Text("Compatibility").foregroundColor(.gray)
                                    Spacer()
                                    Text("Iphone, Ipad & Mac OS")
                                }
                                
                                HStack{
                                    Text("Developer").foregroundColor(.gray)
                                    Spacer()
                                    Text("Guillermo Chacón")
                                }
                                
                                HStack{
                                    Text("Designer").foregroundColor(.gray)
                                    Spacer()
                                    Text("uknown")
                                }
                                
                                HStack{
                                    Text("Website").foregroundColor(.gray)
                                    Spacer()
                                    Text("Linkedin")
                                }
                                
                                HStack{
                                    Text("Version").foregroundColor(.gray)
                                    Spacer()
                                    Text("Release 0")
                                }
                            }
                            else {
                                HStack{
                                    Text("Personal Message")
                                    Spacer()
                                    Text("😐")
                                }
                                
                            }
                            
                        }
                        
                        
                    } //Form
              /*      VStack {
                        Image("Gozila")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                    }
                */
                        
                        
                    
                } //Secondary VS
                
            }     //Principal VS
        
       // .frame(maxWidth:640) tamaño del formulario
        
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
