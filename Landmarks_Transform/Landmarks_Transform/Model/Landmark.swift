//
//  Landmark.swift
//  Landmarks_Transform
//
//  Created by 지정훈 on 2022/11/26.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark : Hashable, Codable,Identifiable{
    var name : String
    var category : String
    var city : String
    var state : String
    var id : Int
    var isFeatured : Bool
    var park : String
    var description: String
    var isFavorite : Bool
    
    
    private var imageName : String
    
    var image : Image{
        Image(imageName)
    }
    
    private var coordinates : Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
            CLLocationCoordinate2D(
                latitude: coordinates.latitude,
                longitude: coordinates.longitude)
        }
    
    struct Coordinates : Hashable, Codable{
        var longitude : Double
        var latitude : Double
    }
}
 
