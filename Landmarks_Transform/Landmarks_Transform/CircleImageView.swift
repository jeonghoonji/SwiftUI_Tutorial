//
//  CircleImageView.swift
//  Landmarks_Transform
//
//  Created by 지정훈 on 2022/11/26.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
        Image("Image")
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.gray, lineWidth: 6)
            }
            .shadow(radius: 9)
            //lineWidth: 6 의 값보다 크게 줘야지 티가 나는거 같음
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
