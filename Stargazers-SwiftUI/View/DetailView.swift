//
//  DetailView.swift
//  Stargazers-SwiftUI
//
//  Created by 高橋蓮 on 2022/09/09.
//

import SwiftUI

struct DetailView: View {
    var result: Results!
    func loadImage(url: String) -> UIImage {
        let imageData = try? Data(contentsOf:URL(string:url)!)
        let resultImage = UIImage(data:imageData!)?.withRenderingMode(.alwaysOriginal)
        return resultImage!
    }
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color.black
                
            ScrollView {
                    VStack {
                        HStack(spacing: 20) {
                            Text(result.jpName)
                            Text("/")
                            Text(result.enName)
                        }
                       
                        .font(.system(size: 20, weight: .bold))
                        .font(.system(.title))
                        .foregroundColor(.red)
                        .padding()
                        
                        HStack {
                            Image(uiImage: loadImage(url: result.starIcon))
                                .resizable()
                                .scaledToFit()
                                .frame(width: 180, height: 180)
                                .border(.gray)
                            Image(uiImage: loadImage(url: result.starImage))
                                .resizable()
                                .frame(width: 180, height: 180)
                                .border(.gray)
                        }
                        
                        VStack(spacing: 10) {
                            HStack(alignment: .center, spacing: 30) {
                                Text("今の角度")
                                    .font(.headline)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.red)
                                Text(result.directionNum.description)
                                    .font(.headline)
                                    .foregroundColor(.red)
                            }
                            
                            HStack(alignment: .center, spacing: 30) {
                                Text(result.season)
                                    .font(.headline)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.red)
                                Text(result.altitude)
                                    .font(.headline)
                                    .foregroundColor(.red)
                            }
                            
                            
                            VStack(spacing: 10) {
                                Text(result.content)
                                    .foregroundColor(Color(uiColor: .darkGray))
                                    .font(.system(size: 15))
                                    .font(.footnote)
                                    .border(.secondary)

                                Text(result.origin)
                                    .foregroundColor(Color(uiColor: .darkGray))
                                    .font(.system(size: 15))
                                    .font(.footnote)
                                    .border(.secondary)
                            }
                        }
                        .padding()
                    }
                }
            .padding(.vertical, 80)
            .padding(.horizontal, 10)
                
            }
            .ignoresSafeArea()
        }
    }
}
struct DetailView_Preview: PreviewProvider {
    static var previews: some View {
        DetailView(result: mockData.first)
    }
}
