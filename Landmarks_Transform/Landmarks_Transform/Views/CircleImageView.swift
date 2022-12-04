//
//  CircleImageView.swift
//  Landmarks_Transform
//
//  Created by 지정훈 on 2022/11/26.
//

import SwiftUI

struct CircleImageView: View {
    // 프로퍼티
    var image : Image
    
    var body: some View {
        VStack{
            //특정 뷰에 대한 일련의 수정자를 래핑?? 캡슐화 하는 경우 많다???
            image
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white,lineWidth: 4)
                }
                .shadow(radius: 7)
//            Image("Image")
//                .clipShape(Circle())
//                .overlay{
//                    Circle().stroke(.gray, lineWidth: 6)
//                }
//                .shadow(radius: 9)
//                lineWidth: 6 의 값보다 크게 줘야지 티가 나는거 같음
        }
        
        
        
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(image: Image("chilkoottrail"))
    }
}
