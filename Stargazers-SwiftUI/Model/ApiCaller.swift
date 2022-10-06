//
//  ApiCaller.swift
//  Stargazers-SwiftUI
//
//  Created by 高橋蓮 on 2022/09/09.
//

import Foundation

class ApiCaller {
    
    func getInfo(latitude: String, longitude: String, completion: @escaping ([Results]) -> Void) {

        let urlLink = "https://livlog.xyz/hoshimiru/constellation?lat=\(latitude)&lng=\(longitude)&date=\(self.month)&hour=\(self.hour)&min=\(self.min)"
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
    
    func dateGiver() ->(month: String, hour: String, min: String) {
        let dt = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH mm"
        let date = dateFormatter.string(from: dt)
        let separate = date.components(separatedBy: " ")
        let month = separate[0]
        let hour = separate[1]
        let min = separate[2]
        return (month, hour, min)
    }
    var month: String {
        self.dateGiver().month
    }
    var hour: String {
        self.dateGiver().hour
    }
    var min: String {
        self.dateGiver().min
    }
}
