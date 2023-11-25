//
//  CoverImageView.swift
//  Africa
//
//  Created by Furkan Cingöz on 25.11.2023.
//

import SwiftUI

struct CoverImageView: View {

  //MARK: PROPERTIES
  let coverImages:[CoverImage] = Bundle.main.decode("covers.json") //make sure you have the correct file name


  //MARK: BODY
  var body: some View {
    TabView{
      ForEach(coverImages) { item in
        Image(item.name)
          .resizable()
        .scaledToFill()
      }//: Loop
    }//: Tab
    .tabViewStyle(PageTabViewStyle())
  }
}



//MARK: PREVIEW
#Preview {
    CoverImageView()
    .previewLayout(.fixed(width: 400, height: 300))
}
