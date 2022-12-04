//
//  FavoriteButton.swift
//  Landmarks_Transform
//
//  Created by 지정훈 on 2022/12/05.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet : Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
