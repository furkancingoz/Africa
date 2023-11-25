//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Furkan Cingöz on 25.11.2023.
//

import SwiftUI

struct AnimalDetailView: View {
  let animal: Animal
    var body: some View {
      ScrollView(.vertical,showsIndicators: false){
        VStack(alignment: .center, spacing: 20) {
         //HERO IMAGE
          Image(animal.image)
            .resizable()
            .scaledToFit()

          //TITLE
          Text(animal.name.uppercased())
            .font(.largeTitle)
            .fontWeight(.heavy)
            .multilineTextAlignment(.center)
            .padding(.vertical,8)
            .foregroundColor(.primary)
            .background(
              Color.accentColor.frame(height: 6).offset(y: 24))

          //HEADLINE
          Text(animal.headline)
            .font(.headline)
            .multilineTextAlignment(.leading)
            .foregroundColor(Color.accentColor)
            .padding(.horizontal)

          //GALERY
          Group{
HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
            InstetGalleryView(animal: animal)
          }
          .padding(.horizontal)

          //FACTS


          //DESCRIPTION


          //MAP

          //LINK
        }
        .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)

      }//:Scrool
    }
}


struct AnimalDetailView_Previews: PreviewProvider {
  static let animals: [Animal] = Bundle.main.decode("animals.json")

  static var previews: some View {
    AnimalDetailView(animal: animals[3])
  }
}

