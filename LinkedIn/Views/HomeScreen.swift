//
//  HomeScreen.swift
//  LinkedIn
//
//  Created by sarah leventon on 2024-10-21.
//

import SwiftUI

var postData: [PostData] = [
    .init(id: 0, Image: "0", title: "iNeuron", followers: 4066, profileImage: "00"),
    .init(id: 1, Image: "1", title: "Learnyst", followers: 2345, profileImage: "01"),
    .init(id: 2, Image: "2", title: "Synopsys inc", followers: 1235, profileImage: "02"),
    .init(id: 3, Image: "3", title: "Skill-Lync", followers: 908, profileImage: "03"),
    .init(id: 4, Image: "4", title: "Intel", followers: 1234, profileImage: "04"),
    .init(id: 5, Image: "5", title: "HP", followers: 567, profileImage: "05"),
    .init(id: 6, Image: "6", title: "JungleWorks", followers: 346, profileImage: "00")
]

struct HomeScreen: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center) {
                    ForEach(postData, id:\.id) { data in
                        PostView(data: data)
                        
                        HStack(alignment: .center, spacing: 10) {
                            ForEach(socialView, id: \.ids) { data in
                                VStack {
                                    Image(systemName: data.image)
                                    Text("\(data.title)")
                                }
                                .foregroundColor(.black.opacity(0.8))
                                .font(.subheadline)
                            }.padding(.horizontal)
                        }
                    }
                }
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
