//
//  ContentView.swift
//  Stargazers-SwiftUI
//
//  Created by 高橋蓮 on 2022/09/09.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject private var ListVM = ListViewModel()
    
    init() {
        UITableView.appearance().backgroundColor = .black
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.red]
        UINavigationBar.appearance().prefersLargeTitles = true
        UINavigationBar.appearance().tintColor = .red
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(ListVM.result) { item in
                    NavigationLink(destination: DetailView(result: item)) {
                        RowView(result: item)
                    }
                }
                .listRowBackground(Color.black)
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
