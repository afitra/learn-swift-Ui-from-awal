//
//  KolomGeomatryReader.swift
//  testSwiftUi
//
//  Created by afitra mamor on 21/10/20.
//

import Foundation
import SwiftUI
struct KolomGeometryReader :View {
    var gambar1, gambar2, gambar3 : String
    var body: some View{
        GeometryReader{
            geo in
            HStack{
                Image(self.gambar1)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geo.size.width/3, height: geo.size.height, alignment: .center)
                    .clipped()
                Image(self.gambar2)
                    .resizable()
                    .aspectRatio(contentMode: .fill) // agar gambar tidak ketari ketika di lanscape
                    .frame(width: geo.size.width/3, height: geo.size.height, alignment: .center)
                    .clipped()
                Image(self.gambar3)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geo.size.width/3, height: geo.size.height, alignment: .center)
                    .clipped()
            }
        }
    }
}
