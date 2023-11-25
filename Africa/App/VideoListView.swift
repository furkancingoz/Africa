//
//  SwiftUIView.swift
//  Africa
//
//  Created by Furkan Cingöz on 25.11.2023.
//

import SwiftUI

struct VideoListView: View {
  //MARK: - PROPERTIES

  let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
  @State var videos : [Video] = Bundle.main.decode("videos.json")

  //MARK: - BODY
  var body: some View {
    NavigationView {
      List{
        ForEach(videos) { item in
          NavigationLink(destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name)){
            VideoListItemView(video: item)
              .padding(.vertical, 8)
          }
        }//:Loop
      }//:List
      .listStyle(InsetGroupedListStyle())
      .navigationBarTitle("Videos")
      .navigationBarTitleDisplayMode(.inline)
      .toolbar {
        ToolbarItem(placement: .navigationBarTrailing) {
          Button(action: {
            // Shuffle videos
            videos.shuffle()
            hapticImpact.impactOccurred()
          }) {
            Image(systemName: "arrow.2.squarepath")
          }
        }

      }//:Navigation
    }
  }
}
  //MARK: - PREVIEW
  #Preview {
    VideoListView()
  }
