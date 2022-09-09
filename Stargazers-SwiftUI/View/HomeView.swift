//
//  ContentView.swift
//  Stargazers-SwiftUI
//
//  Created by 高橋蓮 on 2022/09/09.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject private var ListVM = ListViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(ListVM.result) { item in
                    NavigationLink(destination: DetailView(result: item)) {
                        RowView(result: item)
                    }
                }
            }
            .navigationTitle("Stargazers")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
