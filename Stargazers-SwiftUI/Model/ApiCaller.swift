//
//  ApiCaller.swift
//  Stargazers-SwiftUI
//
//  Created by 高橋蓮 on 2022/09/09.
//

import Foundation
import CoreLocation

class ApiCaller {
    func GetInfo(completion: @escaping ([Results]) -> Void) {
        let locations = LocationManager()
        let latetude = Double((locations.manager.location?.coordinate.latitude)!)
        let longitude = Double((locations.manager.location?.coordinate.longitude)!)

        let dt = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH mm"
        let date = dateFormatter.string(from: dt)
        let separate = date.components(separatedBy: " ")
        let MonthAndDay = separate[0]
        let hour = separate[1]
        let min = separate[2]
        
        let urlLink = "https://livlog.xyz/hoshimiru/constellation?lat=\(latetude)&lng=\(longitude)&date=\(MonthAndDay)&hour=\(hour)&min=\(min)"
        print(urlLink)
        URLSession.shared.dataTask(with: URL(string: urlLink)!) { (data, response, error) in
            guard let data = data else { return }
            let decoder: JSONDecoder = JSONDecoder()
            do {
                let result = try decoder.decode(Articles.self, from: data)
                DispatchQueue.main.async {
                    completion(result.result)
                }
            } catch {
                print("json convert failed in JSONDecoder. " + error.localizedDescription)
            }
        }.resume()
    }
}


