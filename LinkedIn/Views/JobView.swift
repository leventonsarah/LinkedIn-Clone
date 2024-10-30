//
//  JobView.swift
//  LinkedIn
//
//  Created by sarah leventon on 2024-10-22.
//

import SwiftUI

var sampleJobData: JobsModel =
    .init(id: 0, position: "iOS Developer", target: "Senior", salary: "100k - 150k")

struct JobsView: View {
    var data: JobsModel
    
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Image(systemName: "briefcase")
                .resizable()
                .foregroundColor(.black)
                .frame(width: 50, height: 50)
            
            VStack(alignment: .leading) {
                Text(data.position)
                    .font(.body)
                
                Text(data.target)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Text(data.salary)
                    .font(.caption)
                    .foregroundColor(.gray)
            }.frame(width: 150, height: 20, alignment: .leading)
            
            Spacer()
            
            HStack {
                Image(systemName: "xmark.circle")
                    .font(.system(size: 35))
                    .foregroundColor(.gray)
                
                Image(systemName: "checkmark.circle")
                    .font(.system(size: 35))
                    .foregroundColor(.blue).opacity(0.8)
            }.padding(.horizontal)
        }.padding(.horizontal)
    }
}

#Preview {
    JobsView(data: sampleJobData)
}
