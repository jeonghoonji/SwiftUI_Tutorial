//
//  ContentView.swift
//  Landmarks_Transform
//
//  Created by 지정훈 on 2022/11/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
            //보라색 오류
            //Modifying state during view update, this will cause undefined behavior.
            // 예상은 SafeArea쪽으로 가서 건들이면 띄는거 같다!
            //                .ignoresSafeArea()
            //                .offset(y:0)
                .frame(height: 300)
            
            
            CircleImageView()
                .offset(y: -130)
                .padding(.bottom, -130)  //이해완료 40%
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                
                HStack {
                    Text("Josh Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("california")
                        .font(.subheadline)
                }
                
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
                
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
