//
//  locations.swift
//  Stargazers-SwiftUI
//
//  Created by 高橋蓮 on 2022/09/09.
//

import Foundation
import CoreLocation

class LocationViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    override init() {
            locationManager = CLLocationManager()
            authorizationStatus = locationManager.authorizationStatus
            
            super.init()
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.pausesLocationUpdatesAutomatically = false
            locationManager.startUpdatingLocation()
    }
    
    @Published var authorizationStatus: CLAuthorizationStatus
    @Published var lastSeenLocation: CLLocation?

    private let locationManager: CLLocationManager
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let apis = ApiCaller()
        
        let location = locations[0]
        let latitude = Double(location.coordinate.latitude)
        let longitude = Double(location.coordinate.longitude)
        
        apis.latitude = latitude
        apis.longitude = longitude
    }
}

