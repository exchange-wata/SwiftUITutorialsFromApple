//
//  MapView.swift
//  Landmarks
//
//  Created by 渡辺瑞樹 on 2024/04/16.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                region.center = CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868)
                region.span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
            }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}