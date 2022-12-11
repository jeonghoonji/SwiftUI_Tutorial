//
//  BadgeBackground.swift
//  Landmarks_Transform
//
//  Created by 지정훈 on 2022/12/12.
//

import SwiftUI

struct BadgeBackground: View {
    var body: some View {
        Path { path in
            var width : CGFloat = 100.0
            let height = width
            path.move(to: CGPoint(
                x: width * 0.095,
                y: height * 0.20
                )
            )
            // 12월 11일 작업 여기까지
//            HexagonParameters.segments.forEach{ segment
//                path.addLines(
//                    to: CGPoint(
//                        x: width * segment.line.x ,
//                        y: height * segment.line.y
//                    )
//                )
//
//            }
            
            
        }
        .fill(.black)
    }
}

struct BadgeBackground_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBackground()
    }
}
