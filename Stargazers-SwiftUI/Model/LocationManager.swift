//
//  LocationManager.swift
//  Stargazers-SwiftUI
//
//  Created by 高橋蓮 on 2022/09/24.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    private let manager = CLLocationManager()
    @Published var result: [Results] = []
    
    override init() {
        super.init()
        self.manager.delegate = self
        self.manager.requestWhenInUseAuthorization()
        self.manager.desiredAccuracy = kCLLocationAccuracyBest
        self.manager.distanceFilter = 2
        self.manager.startUpdatingLocation()
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = manager.location?.coordinate else {return}
        let latitude = location.latitude.description
        let longitude = location.longitude.description
        
        let api = ApiCaller()
        api.getInfo(latitude: latitude, longitude: longitude) { result in
            self.result = result
        }
    }
}
