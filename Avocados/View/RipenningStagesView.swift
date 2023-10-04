//
//  RipenningStagesView.swift
//  Avocados
//
//  Created by guillermo chacon alcala on 01/08/23.
//

import SwiftUI

struct RipenningStagesView: View {
    var ripeningStagess: Ripening
    var body: some View {
        VStack {
            Image(ripeningStagess.image)
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fit)
            
            Text(ripeningStagess.title)
                .font(.title)
                .fontWeight(.bold)
            
            Text(ripeningStagess.description)
                .font(.body)
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}


struct RipenningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView { // Added NavigationView for better preview
            RipenningStagesView(ripeningStagess: ripeningData[1])
        }
    }
}
