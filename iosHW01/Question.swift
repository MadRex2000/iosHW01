//
//  question.swift
//  iosHW01
//
//  Created by Rex Wu on 2021/3/7.
//

import Foundation


struct Question {
    let question: String
    let ans: String
    var choice: Array<String>
}

var questions = [
    Question(question: "萬事太平\n（猜地名）", ans: "永和", choice: ["永和", "中壢", "美濃"]),
    Question(question: "飲水思源\n（猜地名）", ans: "知本", choice: ["新店", "中和", "知本"]),
    Question(question: "開張大吉\n（猜地名）", ans: "新店", choice: ["士林", "新店", "新竹"]),
    Question(question: "狼來了\n（猜水果）", ans: "楊桃", choice: ["草莓", "芒果", "楊桃"]),
    Question(question: "羊來了\n（猜水果）", ans: "草莓", choice: ["釋迦", "草莓", "蓮霧"]),
    Question(question: "姜太公釣魚\n（猜俗語）", ans: "願者上鉤", choice: ["苦中作樂", "願者上鉤", "海底撈月"]),
    Question(question: "肉包子打狗\n（猜俗語）", ans: "有去無回", choice: ["有去無回", "無法無天", "連滾帶爬"]),
    Question(question: "鬼打官司\n（猜俗語）", ans: "死不認帳", choice: ["苦中作樂", "有去無回", "死不認帳"]),
    Question(question: "娘子呀，快跟牛魔王出來看上帝\n（猜電影）", ans: "大話西游", choice: ["大話西游", "西游 降魔傳", "九品芝麻官"]),
    Question(question: "像這種要求，這輩子沒見過\n（猜電影）", ans: "九品芝麻官", choice: ["九品芝麻官", "賭俠", "鹿鼎記"]),
    Question(question: "我是想站著，還把錢掙了\n（猜電影）", ans: "讓子彈飛", choice: ["讓子彈飛", "星際大戰", "破壞之王"]),
    Question(question: "你快點回火星吧，地球是很危險滴\n（猜）", ans: "少林足球", choice: ["西街少年", "少林足球", "功夫籃球"]),
    Question(question: "五句話\n（猜成語）", ans: "三言兩語", choice: ["三言兩語", "一字千金", "投筆從戎"]),
    Question(question: "棄文就武\n（猜成語）", ans: "投筆從戎", choice: ["九五至尊", "投筆從戎", "步步高升"]),
    Question(question: "八仙過海\n（猜成語）", ans: "各顯神通", choice: ["各顯神通", "鬼話連篇", "八個蝦味先"]),
    Question(question: "閻王爺寫日記\n（猜成語）", ans: "鬼話連篇", choice: ["鬼話連篇", "風和日麗", "七手八腳"]),
    Question(question: "身懷六甲\n（猜地名）", ans: "大肚", choice: ["大肚", "大甲", "七美"]),
    Question(question: "四分五裂\n（猜地名）", ans: "九份", choice: ["九份", "集集", "釣魚台"]),
    Question(question: "推三阻四\n（猜地名）", ans: "七堵", choice: ["七堵", "九份", "六龜"]),
    Question(question: "台灣姑娘\n（猜一字）", ans: "始", choice: ["始", "妙", "好"]),
]
