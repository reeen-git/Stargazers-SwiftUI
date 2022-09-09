//
//  ListViewModel.swift
//  Stargazers-SwiftUI
//
//  Created by 高橋蓮 on 2022/09/09.
//

import Foundation

class ListViewModel: ObservableObject {
    let api = ApiCaller()
    @Published var result: [Results] = []

    init() {
        self.api.GetInfo { (results) in
            self.result = results
        }
    }
}
