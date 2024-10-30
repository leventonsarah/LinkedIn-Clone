//
//  JobScreen.swift
//  LinkedIn
//
//  Created by sarah leventon on 2024-10-22.
//

import SwiftUI

var jobs: [JobsModel] = [
    .init(id: 0, position: "iOS Developer", target: "Senior", salary: "100k - 150k"),
    .init(id: 1, position: "Android Developer", target: "Mid-Level", salary: "80k - 120k"),
    .init(id: 2, position: "Web Developer", target: "Junior", salary: "60k - 90k"),
    .init(id: 3, position: "Backend Engineer", target: "Senior", salary: "110k - 160k"),
    .init(id: 4, position: "Data Scientist", target: "Mid-Level", salary: "95k - 140k"),
    .init(id: 5, position: "DevOps Engineer", target: "Senior", salary: "105k - 155k"),
    .init(id: 6, position: "Product Manager", target: "Lead", salary: "120k - 180k"),
    .init(id: 7, position: "UI/UX Designer", target: "Mid-Level", salary: "70k - 110k"),
    .init(id: 8, position: "iOS Developer", target: "Senior", salary: "100k - 150k"),
    .init(id: 9, position: "Android Developer", target: "Mid-Level", salary: "80k - 120k"),
    .init(id: 10, position: "Web Developer", target: "Junior", salary: "60k - 90k"),
    .init(id: 11, position: "Backend Engineer", target: "Senior", salary: "110k - 160k"),
    .init(id: 12, position: "Data Scientist", target: "Mid-Level", salary: "95k - 140k")
]

struct JobsScreen: View {
    var body: some View {
        VStack {
            SearchBar()
            
            HStack {
                Image(systemName: "briefcase.fill")
                    .foregroundColor(.gray)
                
                Text("Manage Jobs")
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
            
            ScrollView {
                VStack (spacing: 20) {
                    ForEach(jobs, id: \.id) { data in
                        JobsView(data: data)
                        
                        Rectangle()
                            .fill(Color.gray.opacity(0.3))
                            .frame(height: 1)
                    }
                }
            }.padding(.vertical)
        }
    }
}

#Preview {
    JobsScreen()
}
