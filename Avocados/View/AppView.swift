//
//  AppView.swift
//  Avocados
//
//  Created by guillermo chacon alcala on 01/08/23.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
            AvocadosView().tabItem({
                Image("tabicon-branch")
                    .foregroundColor(.primary)
                Text("Avocados")
            })
            
          //  ContentView()
            ContentView().tabItem({
                Image("tabicon-book")
                Text("Recipes")
                    .foregroundColor(.white)
            })
            
            //RipenningView(rip: ripeningData[0])
            Ripening_OriginalView().tabItem({
                Image("tabicon-avocado")
                Text("Ripening")
                    .foregroundColor(.white)
            })
            
            SettingsView().tabItem({
                Image("tabicon-settings")
                Text("Settings")
                    .foregroundColor(Color.black)
            })
               
        }
       // .edgesIgnoringSafeArea(.top)
        .accentColor(.primary)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
