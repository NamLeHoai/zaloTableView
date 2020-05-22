//
//  CustomCell.swift
//  ZaloTableView
//
//  Created by Nam Le on 5/20/20.
//  Copyright © 2020 Nam Le. All rights reserved.
//

import Foundation

struct ChatCell {
    var Avatar: String
    var people: String
    var content: String
    var time: Date?
}

func createData() -> [ChatCell]{
    let chat1 = ChatCell(Avatar: "1", people: "SkyOi", content: "hà nội này đất chật người đông", time: Date())
    let chat2 = ChatCell(Avatar: "2", people: "UnicornOfLove", content: "anh mà thích em thì có được không", time: Date())
    let chat3 = ChatCell(Avatar: "3", people: "LearnByHeart", content: "em đẹp như tranh ở phố hàng trống", time: Date())
    let chat4 = ChatCell(Avatar: "4", people: "Changkhokhotinh", content: "anh chỉ dám cạnh như phố hàng bông", time: Date())
    return [chat1, chat2, chat3, chat4]
}
