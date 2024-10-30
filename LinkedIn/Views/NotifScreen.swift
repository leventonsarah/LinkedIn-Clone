//
//  NotifScreen.swift
//  LinkedIn
//
//  Created by sarah leventon on 2024-10-22.
//

import SwiftUI

var notifs: [NotifsModel] = [
    .init(id: 0, status: "System Update", detail: "A new software update is available.", image: "1", new: true),
    .init(id: 1, status: "New Message", detail: "You have received a new message.", image: "2", new: true),
    .init(id: 2, status: "Payment Reminder", detail: "Your payment is due tomorrow.", image: "3", new: false),
    .init(id: 3, status: "Promotion Alert", detail: "Check out our latest offers!", image: "4", new: true),
    .init(id: 4, status: "Friend Request", detail: "You have a new friend request.", image: "5", new: false),
    .init(id: 5, status: "Security Alert", detail: "Suspicious login attempt detected.", image: "6", new: true),
    .init(id: 6, status: "Event Reminder", detail: "Your event is starting in 5 minutes.", image: "7", new: true)
]

struct NotifScreen: View {
    var body: some View {
        VStack {
            SearchBar()
            
            HStack {
                Image(systemName: "bell.badge.fill")
                    .foregroundColor(.red)
                
                Text("Manage Notifications")
                    .font(.body)
                    .foregroundColor(.blue)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }.padding(.horizontal)
            
            Rectangle()
                .fill(Color.gray.opacity(0.3))
                .frame(height: 10)
                .ignoresSafeArea()
            
            HStack {
                Text("Jobs")
                    .font(.body)
                    .foregroundColor(.blue)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }.padding(.horizontal)
            
            Rectangle()
                .fill(Color.gray.opacity(0.3))
                .frame(height: 1)
            
            ScrollView {
                VStack (spacing: 0) {
                    ForEach(notifs, id: \.id) { data in
                        NotifView(data: data)
                        
                        Rectangle()
                            .fill(Color.gray.opacity(0.3))
                            .frame(height: 1)
                    }
                }
            }
        }
    }
}

#Preview {
    NotifScreen()
}
