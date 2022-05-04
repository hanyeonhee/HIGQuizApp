//
//  Rank.swift
//  HIG_Quiz
//
//  Created by 한연희 on 2022/04/28.
//

import SwiftUI

struct Rank: View {
    
    let MentorList: [String] = ["Leeo", "Jason", "Godswill", "Vivi", "Jiku", "Saya", "Lingo", "Daisy", "Gommin", "Joel"]
    
    var body: some View {
        Text("Ranking")
        List{
            ForEach( 0 ..< MentorList.count, id: \.self ){ mentor in
                
                Text("\(mentor+1) 위  \(MentorList[mentor])")
            }
        }
        
    }
}

struct Rank_Previews: PreviewProvider {
    static var previews: some View {
        Rank()
    }
}
