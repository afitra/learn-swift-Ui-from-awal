//
//  YoutubeContent.swift
//  testSwiftUi
//
//  Created by afitra mamor on 05/10/20.
//

import Foundation

import SwiftUI
struct YoutubeContentPart: View {
    
    var body: some View {
//        Text("content ini")
        List{
            // ======>>>>>>>>>   kontent 1
          
 
            CellContentPart(imageContent: "berita1", profileContent: "Afitra_AF", title: "Tutorial SwiftUi #1", description: "ini adalah deskripsi vidio ita = 300x ditonton - 9 jam yang lalu ", duration:"10:00")
            
            // ======>>>>>>>>>   kontent 2
          
 
            CellContentPart(imageContent: "berita2", profileContent: "Afitra_AF", title: "Tutorial SwiftUi #1", description: "ini adalah deskripsi vidio ita = 300x ditonton - 9 jam yang lalu ", duration:"10:00")
            
            // ======>>>>>>>>>   kontent 3
          
 
            CellContentPart(imageContent: "berita3", profileContent: "Afitra_AF", title: "Tutorial SwiftUi #1", description: "ini adalah deskripsi vidio ita = 300x ditonton - 9 jam yang lalu ", duration:"10:00")
            
            
            
        }
    }
}



struct YoutubeContentPart_Previews: PreviewProvider {
    static var previews: some View {
 
        YoutubeContentPart()
    }
}


struct CellContentPart : View {
 
    
    
    @State var imageContent:String
    @State var profileContent:String
    @State var title:String
    @State var description:String
    @State var duration:String
    
    var body : some View {
    VStack{
        ZStack(alignment:.bottomTrailing){ // posisi kanan bawah jjika .bottomLeading kiribawah
            Image(imageContent)
                .resizable()
                .aspectRatio(contentMode: .fill)
            Text("\(duration)")
                .padding(.all, 5)
                .foregroundColor(Color.white)
                .font(.caption)
                .background(Color.black)
                .cornerRadius(10)
                .padding(.trailing,5)
                .padding(.bottom, 5)
        }
        HStack(spacing:20){
            Image(profileContent)
                .resizable()
                .frame(width: 30, height: 30, alignment: .center)
                .clipShape(Circle())
            
            VStack(alignment:.leading){
                Text("Tutorial SwiftUi #1")
                HStack{
                    Text(description)
                        .font(.caption)
                }
            }
            Spacer()
            Image(systemName: "list.bullet")
        }
    }
    
    }
    
}
