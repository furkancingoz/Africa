//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Furkan Cingöz on 25.11.2023.
//

import Foundation


extension Bundle {
  func decode(_ file: String) -> [CoverImageModel] {
    //1. locate the json file
    guard let url = self.url(forResource: file, withExtension: nil) else {
      fatalError("Failed to locate \(file) in bundle ")
    }

    //2. creat a property for the data
    guard let data = try? Data(contentsOf: url) else {
      fatalError("Failed to load \(file) from bundle")
    }

    //3. crate a decoder
    let decoder = JSONDecoder()

    //4.creat a property for the decode data
    guard let loaded = try? decoder.decode([CoverImageModel].self, from: data) else {
      fatalError("Failed to decode \(file) from bundle")
    }

    //5. returtn the ready to use data
    return loaded
  }
}
