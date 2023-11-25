//
//  InstetGalleryView.swift
//  Africa
//
//  Created by Furkan Cingöz on 25.11.2023.
//

import SwiftUI

struct InstetGalleryView: View {
  var animal: Animal
  var body: some View {
    ScrollView(.horizontal,showsIndicators: false){
      HStack(alignment: .center, spacing: 15) {
        ForEach(animal.gallery, id: \.self) { item in
          Image(item)
            .resizable()
            .scaledToFit()
            .frame(height: 200)
          .cornerRadius(12)
        }//loop
      }//hstack
    }//scroll view
  }
}
struct InstetGalleryView_Previews: PreviewProvider {
  static let animals: [Animal] = Bundle.main.decode("animals.json")

  static var previews: some View {
    InstetGalleryView(animal: animals[0])
  }
}
