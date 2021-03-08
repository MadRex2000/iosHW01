//
//  LandingView.swift
//  iosHW01
//
//  Created by Rex Wu on 2021/3/8.
//

import SwiftUI


struct LandingView: View {
    @Binding var showflag: Bool
    
    var body: some View{
        VStack{
            Text("Wellcome")
                .font(.system(size: 40))
                .padding(10)
                .multilineTextAlignment(.center)
                .frame(width: 350, height: 150)
            
            Button(action: {
                self.showflag.toggle()
            }) {
                Text("Start")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                    .padding(10)
                    .multilineTextAlignment(.center)
                    .frame(width: 100, height: 30)
               }
            .padding(20)
            .background(Color.orange)
            .cornerRadius(10)
            .shadow(color: Color.black, radius: 5, y: 1)

        }
    }
}


struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView(showflag: .constant(true))
    }
}
