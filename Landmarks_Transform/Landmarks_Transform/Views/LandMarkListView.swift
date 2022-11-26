//
//  LandMarkListView.swift
//  Landmarks_Transform
//
//  Created by 지정훈 on 2022/11/26.
//

import SwiftUI

struct LandMarkListView: View {
    var body: some View {
        List{
            
            //
            ForEach(landmarks, id:\.id){ landmark in
                LandMarkRow(landmark: landmark)
                
            }
        }
    }
}

struct LandMarkListView_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkListView()
    }
}
