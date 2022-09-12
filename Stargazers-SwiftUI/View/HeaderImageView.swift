//
//  HeaderImageView.swift
//  Stargazers-SwiftUI
//
//  Created by 高橋蓮 on 2022/09/12.
//

import SwiftUI

struct HeaderImageView: View {
    var result: Results
    
    func loadImage(url: String) -> UIImage {
        let imageData = try? Data(contentsOf:URL(string:url)!)
        let resultImage = UIImage(data:imageData!)?.withRenderingMode(.alwaysOriginal)
        return resultImage!
    }
    
    var body: some View {
        ZStack {
            //2つの写真を重ねて、星座を見つけやすくする
            Image(uiImage: loadImage(url: result.starImage))
                .resizable()
                .frame(width: 300, height: 300)
                .clipped()
                .border(Color(uiColor: .darkGray))
                .scaledToFit()
                .padding(.vertical, 20)
            
            Image(uiImage: loadImage(url: result.starIcon))
                .resizable()
                .opacity(0.15)
                .frame(width: 300, height: 300)
                .border(Color(uiColor: .darkGray))
                .scaledToFit()
                .padding(.vertical, 20)
        }
    }
}

struct HeaderImageView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderImageView(result: mockData[2])
    }
}
