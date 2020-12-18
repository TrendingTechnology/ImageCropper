//
//  ContentView.swift
//  Demo-macOS
//
//  Created by Anthony Fernandez on 12/18/20.
//

import SwiftUI
import ImageCropper

struct ContentView: View {
  
  @State var ratio: CropperRatio = CropperRatio.r_1_1
  
  var body: some View {
    VStack {
      Text("Image Cropper Demo")
      
      Spacer()
      
      ImageCropperView(image:
                        Image("stock"),
                       ratio: ratio
      )
      .onCropChanged { (newCrop) in
        print(newCrop)
      }
      
      
      Spacer()
      
      HStack {
        Spacer()
        
        Button(action: {
          ratio = CropperRatio.r_1_1
        }) {
          Text("1:1")
        }
        
        Button(action: {
          ratio = CropperRatio.r_3_2
        }) {
          Text("3:2")
        }
        
        Button(action: {
          ratio = CropperRatio.r_4_3
        }) {
          Text("4:3")
        }
        
        Spacer()
      }
      .padding(.vertical, 16)
    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
