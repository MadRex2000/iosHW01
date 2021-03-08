//
//  EndingView.swift
//  iosHW01
//
//  Created by Rex Wu on 2021/3/8.
//

import SwiftUI

struct EndingView: View {
    @Binding var end: Bool
    @Binding var score: Int
    
    var body: some View{
        VStack{
            Text("結束遊戲\n得分\(score)/100")
                .font(.system(size: 40))
                .padding(10)
                .multilineTextAlignment(.center)
                .frame(width: 350, height: 150)
            Button(action: {
                self.end.toggle()
            }) {
                Text("再玩一次")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                    .padding(10)
                    .multilineTextAlignment(.center)
                    .frame(width: 140, height: 30)
               }
            .padding(20)
            .background(Color.orange)
            .cornerRadius(10)
            .shadow(color: Color.black, radius: 5, y: 1)
        }
    }
}

struct EndingView_Previews: PreviewProvider {
    static var previews: some View{
        EndingView(end: .constant(true), score: .constant(0))
    }
}
