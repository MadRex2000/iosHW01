//
//  HomeView.swift
//  iosHW01
//
//  Created by Rex Wu on 2021/3/8.
//

import SwiftUI
import AVFoundation


struct HomeView: View {
    @Binding var end: Bool
    @Binding var score: Int
    @State var questionNumber = 0
    @State var question = questions[0]
    @State var speechUtterance = AVSpeechUtterance()
    
    let synthesizer = AVSpeechSynthesizer()
    
    func setupVoice(question: String) -> Void{
        speechUtterance = AVSpeechUtterance(string: "\(question)")
        speechUtterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        speechUtterance.pitchMultiplier = 1.2
        speechUtterance.rate = 0.5
    }
    
    var body: some View {
        VStack{
            HStack{
                Text("第 \(questionNumber + 1)/10 題")
                Text("得分 \(score)/100 分")
            }
            
            Text(question.question)
                .font(.system(size: 30))
                .multilineTextAlignment(.center)
                .frame(width: 350, height: 130)
            
            Button(action: {
                synthesizer.speak(speechUtterance)
            }) {
                HStack{
                    Image(systemName: "livephoto.play")
                        .font(.system(size: 25))
                        .foregroundColor(.black)
                    
                    Text("Play")
                        .foregroundColor(.white)
                        .font(.system(size: 25))
  
                }
                .multilineTextAlignment(.center)
                .frame(width: 120, height: 50)
               }
            .background(Color.red)
            .cornerRadius(10)
            .shadow(color: Color.black, radius: 5, y: 1)

            ForEach(0 ..< 3){ index in
                Button(action: {
                    if question.choice[index] == question.ans{
                        score += 10
                    }
                    questionNumber += 1
                    question = questions[self.questionNumber]
                    setupVoice(question: question.question)
                    question.choice.shuffle()
                    if questionNumber == 10{
                        self.end.toggle()
                        questionNumber = 0
                    }
                }) {
                    Text(question.choice[index])
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                        .padding(10)
                        .multilineTextAlignment(.center)
                        .frame(width: 180, height: 60)
                   }
                .padding(10)
                .background(Color.orange)
                .cornerRadius(10)
                .shadow(color: Color.black, radius: 5, y: 1)
                
            }
        }
        .onAppear(perform: {
            questions.shuffle()
            question = questions[self.questionNumber]
            setupVoice(question: question.question)
            question.choice.shuffle()
            score = 0
        })
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(end: .constant(false), score: .constant(0))
    }
}
