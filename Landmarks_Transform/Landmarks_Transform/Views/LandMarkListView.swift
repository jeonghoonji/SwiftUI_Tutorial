//
//  LandMarkListView.swift
//  Landmarks_Transform
//
//  Created by 지정훈 on 2022/11/26.
//

import SwiftUI

struct LandMarkListView: View {
    @EnvironmentObject var modelData : ModelData
    
    @State private var showFavoritesOnly = false
    
    var filterLandmarks : [Landmark]{
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filterLandmarks){ landmark in
                    NavigationLink {
                        LandMarkDetailView(landmark: landmark)
                    } label: {
                        LandMarkRow(landmark: landmark)
                    }
                }
                .navigationTitle("LandMarks")
            }
           
        }
    }
}


struct LandMarkListView_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkListView()
            .environmentObject(ModelData())
    }
}
