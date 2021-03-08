//
//  ContentView.swift
//  iosHW01
//
//  Created by Rex Wu on 2021/3/6.
//

import SwiftUI

struct ContentView: View {
    @State var showflag = true
    @State var end = false
    @State var score = 0
    
    var body: some View {
        ZStack{
            if showflag{
                LandingView(showflag: self.$showflag)
            }
            else{
                if end {
                    EndingView(end: self.$end, score: self.$score)
                }
                else{
                    HomeView(end: self.$end, score: self.$score)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
