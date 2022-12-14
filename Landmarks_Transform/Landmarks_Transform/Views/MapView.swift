//
//  MapView.swift
//  Landmarks_Transform
//
//  Created by 지정훈 on 2022/11/26.
//

import SwiftUI
import MapKit


struct MapView: View {
    var coordinate : CLLocationCoordinate2D
    
//    @State private var region = MKCoordinateRegion(
//            center: CLLocationCoordinate2D(latitude: 37.211246, longitude: 127.0788873),
//            span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03)
//        )

    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear{
                setRegion(coordinate)
            }
    }
    
    private func setRegion(_ coordinate:CLLocationCoordinate2D){
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
            
    }

}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 37.211246, longitude: 127.0788873))
    }
}
