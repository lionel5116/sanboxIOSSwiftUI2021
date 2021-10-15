//
//  VideoListView.swift
//  sanboxIOSSwiftUI2021
//
//  Created by lionel jones on 10/15/21.
//

import SwiftUI

struct VideoListView: View {
    
    //property on the struct needs to be oustide of the some view
    var videos: [Video] = VideoList.topTen;
    
    var body: some View {
        NavigationView {
            List(videos, id: \.id){ video in//container ->now my list when embedded
                NavigationLink(destination: VideoDetailView(video: video), label: {
                    VideoCell(video: video)
                })  //Navigation Link is wrapping our cell content
            }
            .navigationTitle("Lionel's Top 10")//container
        }  //Navigation
    }
}

struct VideoCell: View {
    
    var video: Video
    
    var body: some View {
        HStack{
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame( height: 70)
                .cornerRadius(4)
                .padding(.vertical, 4)
            
            
            VStack(alignment: .leading, spacing: 5){ //this is our CELL
                Text(video.title)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .minimumScaleFactor(0.05)
                
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
    
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
