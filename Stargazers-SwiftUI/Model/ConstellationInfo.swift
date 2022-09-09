//
//  ConstellationInfo.swift
//  Stargazers-SwiftUI
//
//  Created by 高橋蓮 on 2022/09/09.
//

import Foundation

struct ConstellationInfo: Decodable {
    var information: [Results]
}
    let mockData: [Results] = [
    Results(
        id: "0",
        direction: "西",
        season: "秋",
        jpName: "アンドロメダ座",
        enName: "Andromeda",
        altitude: "45度位",
        origin: "エチオペアをケフェウス王とカシオペア王妃が支配していた時のこと、2人には絶世の美女アンドロメダ姫がいました。カシオペアはアンドロメダがあまりに美しいので、その事を自慢しすぎて海の妖精たちの嫉妬を買ってしまいます。海の妖精たちの話を聞いた海の神・ポセイドンは怒り、化け鯨ティアマトに人々を襲わせました。困ったケフェウス王は神にお伺いを立てると、アンドロメダをいけにえに捧げよ、と迫られます。王は、苦渋の決断の末、国民を守るためにアンドロメダを海岸の岩に鎖でつなぎました。やがて、化け鯨がやってきてアンドロメダに向かって突き進んできました。その瞬間、若者・ペルセウスが立ちはだかりました。彼は化け鯨を退治し、アンドロメダを開放したのです。（ペルセウス座も合わせてご覧ください）",
        content: "秋の代表的な星座。21時に正中する時期は、11月下旬。銀河系の隣の銀河・アンドロメダ大銀河があることで有名。設定者はプトレマイオス。",
        altitudeNum: 42.01,
        directionNum: 279.17,
        starImage: "https://livlog.xyz/hoshimiru/img/and.png",
        starIcon: "https://livlog.xyz/hoshimiru/icon/and.png"
    ),
    
    Results(
        id: "1",
        direction: "南東",
        season: "冬",
        jpName: "いっかくじゅう座",
        enName: "Monoceros",
        altitude: "30度位",
        origin: "なし",
        content: "いっかくじゅう座（一角獣座、Monoceros）は、冬の南天に見える星座。設定者はヤコブス・バルチウス。",
        altitudeNum: 36.51,
        directionNum: 141.26,
        starImage: "https://livlog.xyz/hoshimiru/img/mon.png",
        starIcon: "https://livlog.xyz/hoshimiru/icon/mon.png"
    ),
    
    Results(
        id: "2",
        direction: "西南西",
        season: "秋",
        jpName: "うお座",
        enName: "Pisces",
        altitude: "水平線の近く",
        origin: "ある日、神々がナイル川のほとりで宴会を開いていました。そこへ怪物テュフォンが現れました。テュフォンはゼウスの祖母にあたる大地の女神ガイアが生み出した怪物で、ガイアはゼウスに息子を沢山殺されたために、ゼウスへの復讐のためにテュフォンを生み出したのでした。テュフォンは目から火を噴き、口からは岩を吐き、吐く息は我慢出来ないほど嫌なにおいがしました。そのために、神々は先を競って逃げました。ゼウスは鳥となって大空に舞いあがり、へーらは牡牛となって逃げました。愛と美の女神アフロディーテとその息子のエロスは魚に変身、はぐれないようにしっかりと体をリボンで結びました。後でその姿を思い出して面白がったゼウスが、その姿を星座にして空にあげました。",
        content: "秋の星座。21時に正中する時期は11月中旬。現在、春分点がある星座。うお座は3等星より明るい星がなく、あまり目立たない。",
        altitudeNum: 21.89,
        directionNum: 245.2,
        starImage: "https://livlog.xyz/hoshimiru/img/psc.png",
        starIcon: "https://livlog.xyz/hoshimiru/icon/psc.png"
    ),
    
    Results(
        id: "3",
        direction: "南南東",
        season: "冬",
        jpName: "うさぎ座",
        enName: "Lepus",
        altitude: "30度位",
        origin: "なし",
        content: "うさぎ座（兎座、Lepus）は、冬の星座で、トレミーの48星座の1つ。小さいながらもそこそこ明るい星があり、均整の取れた形で覚えやすく、古くから親しまれてきた星座である。オリオン座の南に位置し、オリオンに追われている野ウサギを表すといわれる。",
        altitudeNum: 29.55,
        directionNum: 162.58,
        starImage: "https://livlog.xyz/hoshimiru/img/lep.png",
        starIcon: "https://livlog.xyz/hoshimiru/icon/lep.png"
    )
    ]
