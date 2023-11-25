//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Furkan Cingöz on 25.11.2023.
//

import SwiftUI
import AVKit
struct VideoPlayerView: View {

  var videoSelected: String
  var videoTitle: String

  var body: some View {
    VStack {
      VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")) {
        //          Text(videoTitle)
      }
      .overlay(
        Image("logo")
          .resizable()
          .scaledToFit()
          .frame(width: 32,height: 32)
          .padding(.top,6)
          .padding(.horizontal, 8)
        , alignment: .topLeading
      )
    }//vstack
    .accentColor(.accentColor)
    .navigationBarTitle(videoTitle)
    .navigationBarTitleDisplayMode(.inline)
  }
}

#Preview {
  NavigationView {
    VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
  }
}
