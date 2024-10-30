//
//  NotifView.swift
//  LinkedIn
//
//  Created by sarah leventon on 2024-10-22.
//

import SwiftUI

var sampleNotifData : NotifsModel = .init(id: 0, status: "System Update", detail: "A new software update is available.", image: "1", new: false)

struct NotifView: View {
    var data : NotifsModel
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            Image(data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 70, height: 70, alignment: .center)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(data.status)
                        .font(.body)
                    
                    if (data.new) {
                        Image(systemName: "bell.fill")
                            .foregroundColor(.red)
                            .font(.system(size: 20))
                    }
                }
                
                Text(data.detail)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }.frame(height: 100, alignment: .leading)
                
            Spacer()
                
            HStack {
                Image(systemName: "trash")
                        .font(.system(size: 30))
                        .foregroundColor(.red)
                    
                Image(systemName: "checkmark.circle")
                        .font(.system(size: 30))
                        .foregroundColor(.green)
            }.padding(.horizontal)
        }
    }
}

#Preview {
    NotifView(data: sampleNotifData)
}
