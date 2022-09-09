//
//  DetailView.swift
//  Stargazers-SwiftUI
//
//  Created by 高橋蓮 on 2022/09/09.
//

import SwiftUI

struct DetailView: View {
    var result: Results!
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    VStack(alignment: .leading, spacing: 20) {
                        //Title
                        Text(result.altitude)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                        
                        //HeadLine
                        Text(result.directionNum.description)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //Description
                        Text(result.origin)
                            .multilineTextAlignment(.leading)
                    }
                    .padding(.horizontal, 20)
                }
                .navigationTitle(result.jpName)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
            }
        }
    }
}
struct DetailView_Preview: PreviewProvider {
    static var previews: some View {
        DetailView(result: mockData.first)
    }
}
