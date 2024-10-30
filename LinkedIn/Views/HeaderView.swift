//
//  HeaderView.swift
//  LinkedIn
//
//  Created by sarah leventon on 2024-10-21.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            SearchBar()
            
            Divider()
            
            HStack {
                Image(systemName: "square.and.pencil")
                Text("Start a post")
            }.padding(.horizontal)
            
            Divider()
            
            HStack {
                Image(systemName: "photo")
                    .foregroundColor(.blue)
               
                Text("Photo")
                
                Spacer()
                
                Image(systemName: "video.fill")
                    .foregroundColor(.green)
                
                Text("Video")
                
                Spacer()
                
                Image(systemName: "calendar")
                    .foregroundColor(.orange)
                
                Text("Event")
            }.padding(.horizontal)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
