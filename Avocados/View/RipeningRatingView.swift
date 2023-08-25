//
//  RipeningRatingView.swift
//  Avocados
//
//  Created by guillermo chacon alcala on 19/08/23.
//

import SwiftUI

struct RipeningRatingView: View {
    var rip: Ripening
    var star: Int = 0
    var body: some View {
        if rip.stage>0 {
            ForEach(1...(rip.stage),id:\.self){ item in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(.yellow)
                
            }
        } else {
            Image(systemName: "star")
            
        }
        
    }
}


struct RipeningRatingView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningRatingView(rip: ripeningData[0], star: 0)
    }
}
