//
//  aaa.swift
//  Stargazers-SwiftUI
//
//  Created by 高橋蓮 on 2022/09/12.
//

import SwiftUI

struct InformationView: View {
    var result: Results
    var body: some View {
        GroupBox() {
            DisclosureGroup("\(result.jpName)に関する詳細") {
                VStack(spacing: 10) {
                    Divider().padding(.vertical, 5)
                    
                    //現在の角度を返す
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text("今の角度 :")
                        }
                        Spacer(minLength: 25)
                        Text("今の角度")
                    }
                    
                    Divider().padding(.vertical, 5)
                    
                    //星座の角度(数字)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text("方角 :")
                        }
                        Spacer(minLength: 25)
                        Text(result.directionNum.description)
                    }
                    
                    Divider().padding(.vertical, 5)
                    
                    //星座の角度(文字)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text("方角 :")
                        }
                        Spacer(minLength: 25)
                        Text(result.direction)
                    }
                    
                    Divider().padding(.vertical, 5)
                    
                    //星座の季節
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text("季節 :")
                        }
                        Spacer(minLength: 25)
                        Text(result.season)
                    }
                    
                    Divider().padding(.vertical, 5)
                    
                    //星座の高度
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text("高度:")
                        }
                        Spacer(minLength: 25)
                        Text(result.altitude)
                    }
                }
                .padding()
                .foregroundColor(.red)
            }
        }
    }
}

struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        InformationView(result: mockData[0])
    }
}
