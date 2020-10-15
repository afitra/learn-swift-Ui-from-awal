//
//  YoutubeHeader.swift
//  testSwiftUi
//
//  Created by afitra mamor on 05/10/20.
//

import Foundation
import SwiftUI
struct YoutubeHeaderView: View {
    
    var body: some View {
        
        NavigationView{
            YoutubeContentPart()
                .navigationBarItems(
                    leading:  // untuk rata kiri
                        HStack{
                            Button(action:{}){
                                Image("youtube")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: 90, height: 20, alignment: .center)
                            }
                        }
                    ,trailing: // untuk rata kanan
                        HStack(spacing:30){
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                                Image(systemName: "tray.full")
                                    .foregroundColor(Color.secondary)
                            }
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                                Image(systemName: "video.fill")
                                    .foregroundColor(Color.secondary)
                            }
                            
                            Button(action: {}){
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(Color.secondary)
                            }
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                                Image("Afitra_AF")
                                    .renderingMode(.original)
                                    .resizable() // agar ukuran mengikuti
                                    .frame(width: 20, height: 20, alignment: .center)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            }
                            
                            
                        }
                )
                .navigationBarTitle("", displayMode:.inline)
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}



struct YoutubeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        YoutubeHeaderView()
    }
}
