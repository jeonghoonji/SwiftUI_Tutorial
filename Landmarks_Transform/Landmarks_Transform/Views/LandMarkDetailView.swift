//
//  LandMarkDetailView.swift
//  Landmarks_Transform
//
//  Created by 지정훈 on 2022/11/26.
//

import SwiftUI

struct LandMarkDetailView: View {
    
    @EnvironmentObject var modelData : ModelData
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var landmark : Landmark
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
            //보라색 오류
            //Modifying state during view update, this will cause undefined behavior.
            // 예상은 SafeArea쪽으로 가서 건들이면 띄는거 같다!
            //                .ignoresSafeArea()
            //                .offset(y:0)
                .frame(height: 300)
            
            
            CircleImageView(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)  //이해완료 40%
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                
                Divider()
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
                
            }
            .padding()
            
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandMarkDetailView_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    
    static var previews: some View {
        LandMarkDetailView(landmark: ModelData().landmarks[0])
            .environmentObject(modelData)
    }
}
