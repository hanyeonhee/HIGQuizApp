//
//  ButtonView.swift
//  HIG_Quiz
//
//  Created by 한연희 on 2022/04/28.
//

import SwiftUI

struct Splash: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center){
                Text("HIG\nQuiz")
                    .font(.system(size:100, weight: .bold, design: .rounded))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 80)
                
                NavigationLink(destination: ContentView()) {
                    Text("Start")
                        .font(.system(size:30, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                        .padding(.horizontal, 50)
                        .padding(.vertical, 10)
                        .background(Color.black)
                        .clipShape(Capsule())
                    
                }
            }
        }
    }
}


struct Splash_Previews: PreviewProvider {
    static var previews: some View {
        Splash()
    }
}
