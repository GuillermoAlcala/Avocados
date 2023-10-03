//
//  RipenningStagesView.swift
//  Avocados
//
//  Created by guillermo chacon alcala on 01/08/23.
//

import SwiftUI

struct RipenningStagesView: View {
    var ripeningStages: Ripening
    
    var body: some View {
        VStack {
            Image(ripeningStages.image)
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fit)
            
            Text(ripeningStages.title)
                .font(.title)
                .fontWeight(.bold)
            
            Text(ripeningStages.description)
                .font(.body)
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}


struct RipenningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView { // Added NavigationView for better preview
            RipenningStagesView(ripeningStages: ripeningData[1])
        }
    }
}
