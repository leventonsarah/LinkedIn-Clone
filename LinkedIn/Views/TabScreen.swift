//
//  TabView.swift
//  LinkedIn
//
//  Created by sarah leventon on 2024-10-21.
//

import SwiftUI

struct TabScreen: View {
    var body: some View {
        TabView{
            HomeScreen()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            NetworkScreen()
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("My Network")
                }
            
            Text("Post")
                .tabItem {
                    Image(systemName: "plus.app.fill")
                    Text("Post")
                }
            
            NotifScreen()
                .tabItem {
                    Image(systemName: "bell.badge.fill")
                    Text("Notifications")
                }
            
            JobsScreen()
                .tabItem {
                    Image(systemName: "briefcase.fill")
                    Text("Jobs")
                }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabScreen()
    }
}
