//
//  DetailView.swift
//  Stargazers-SwiftUI
//
//  Created by 高橋蓮 on 2022/09/09.
//

import SwiftUI

struct RowView: View {

    var result: Results
    
    func loadImage(url: String) -> UIImage {
        let imageData = try? Data(contentsOf:URL(string:url)!)
        let resultImage = UIImage(data:imageData!)?.withRenderingMode(.alwaysOriginal)
        return resultImage!
    }
    
    var body: some View {
        HStack(spacing: 20) {
            Image(uiImage: loadImage(url: result.starIcon))
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .border(.gray)
                .padding()
            VStack(alignment: .leading, spacing: 5) {
                Text(result.jpName)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.red)
                Text(result.direction)
                    .font(.footnote)
                    .foregroundColor(Color.red)
            }
            .padding(.horizontal, 10)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.black)
    }
}
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(result: mockData[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
