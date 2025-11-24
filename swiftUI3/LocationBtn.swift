//
//  LocationBtn.swift
//  swiftUI3
//
//  Created by 杨棒 on 2025/11/24.
//

import SwiftUI
import MapKit
internal import Combine
import CoreLocationUI


class ObservableLocationManager:NSObject,ObservableObject,CLLocationManagerDelegate{
    let locationManager = CLLocationManager()
    
    @Published var regin = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 39.91667, longitude: 116.41667), latitudinalMeters: 500,longitudinalMeters: 500)
    
    override init() {
        super.init()
        locationManager.delegate = self
    }
    
    //请求定位
    func requestLocation(){
        locationManager.requestLocation()
    }
    
    //回调
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else {return}
        
        regin = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 500, longitudinalMeters: 500)
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: any Error) {
        print(error.localizedDescription)
    }
    
}

struct LocationBtn: View {
    
    @StateObject var manager = ObservableLocationManager()
    
    var body: some View {
        ZStack{
            Map(coordinateRegion: $manager.regin)
            LocationButton(.currentLocation){
                manager.requestLocation()
            }.foregroundStyle(.white)
                .cornerRadius(10)
                .labelStyle(.iconOnly)
        }
    }
}

#Preview {
    LocationBtn()
}
