//
//  ExternalWebLinkView.swift
//  Africa
//
//  Created by Furkan Cingöz on 25.11.2023.
//

import SwiftUI

struct ExternalWebLinkView: View {
  let animal: Animal
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ExternalWebLinkView_Previews: PreviewProvider {
  static let animals: [Animal] = Bundle.main.decode("animals.json")

  static var previews: some View {
    ExternalWebLinkView(animal: animals[0])
  }
}
