//
//  LandMarkRow.swift
//  Landmarks_Transform
//
//  Created by 지정훈 on 2022/11/26.
//

import SwiftUI

struct LandMarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50,height: 50)
            Text(landmark.name)
            
            Spacer()
        }
    }
}

struct LandMarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkRow(landmark: landmarks[1])
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
