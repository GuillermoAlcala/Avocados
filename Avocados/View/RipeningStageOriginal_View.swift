//
//  RipeningStageOriginal_View.swift
//  Avocados
//
//  Created by guillermo chacon alcala on 03/10/23.
//

import SwiftUI

struct RipeningStageOriginal_View: View {
    var ripeningStages:[Ripening]=ripeningData
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            VStack{
                Spacer()
                HStack(alignment:.center, spacing: 25){
                        ForEach(ripeningStages) { stage in
                            Ripening_OriginalView(ripening: stage)
                        }
                }
                .padding(.vertical)
                .padding(.horizontal,45)
                Spacer()
            }
            
            
            
        }
    }
}

struct RipeningStageOriginal_View_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStageOriginal_View(ripeningStages: ripeningData)
    }
}
