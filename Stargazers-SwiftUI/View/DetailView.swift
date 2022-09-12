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
        ScrollView(.vertical) {
            VStack(alignment: .center, spacing: 5) {
                
                //Header
                HeaderImageView(result: result)
                
                VStack(alignment: .center, spacing: 25) {
                    
                    //名前
                    HStack(spacing: 20) {
                        Text(result.jpName)
                        Text(result.enName)
                    }
                    .font(Font.system(.title2).bold())
                    
                    //方角・角度を表示する
                    InformationView(result: result)
                    
                    //HeadLine
                    VStack(alignment: .leading, spacing: 5) {
                        Text("概要")
                            .font(.system(size: 20, weight: .bold))
                        Text(result.content)
                            .font(.system(size: 15, weight: .regular))
                    }
                    .font(.footnote)
                    
                    //Description
                    VStack(alignment: .leading, spacing: 5) {
                        Text("起源")
                            .font(.system(size: 20, weight: .bold))
                        Text(result.origin)
                            .font(.system(size: 15, weight: .regular))
                    }
                    .font(.footnote)
                }
                .padding(.horizontal, 20)
                .frame(maxWidth: 640, alignment: .center)
            }
            .foregroundColor(.red)
            .offset(y: -50)
        }
        .background(.black)
    }
}

struct DetailView_Preview: PreviewProvider {
    static var previews: some View {
        DetailView(result: mockData.first)
    }
}
