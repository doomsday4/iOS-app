//
//  ContentView.swift
//  Image_from_URL
//
//  Created by Aman Khilani on 26/03/23.
//

import SwiftUI

extension String {
    
    func load() -> UIImage {
        
        do {
            guard let url = URL(string: self) else {
                return UIImage()
            }
            let data: Data = try
            Data(contentsOf: url)
            
            return UIImage(data: data)
                ?? UIImage()
        } catch {
            
        }
        
        return UIImage()
    }
}

struct ContentView: View {
    var body: some View {
        //creating an image object
        
        Image(uiImage: "https://www.nasa.gov/sites/default/files/styles/full_width_feature/public/thumbnails/image/main_image_star-forming_region_carina_nircam_final-5mb.jpg".load())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
