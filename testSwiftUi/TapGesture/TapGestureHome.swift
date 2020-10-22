//
//  TapGestureHomeView.swift
//  testSwiftUi
//
//  Created by afitra mamor on 21/10/20.
//

import Foundation
import SwiftUI


struct TapGestureHome:View {
    @State var isLike:Bool = false
    var body : some View{
        NavigationView{
            
            VStack{
//
                GeometryReader{
                    geo in
                    VStack{
                        HStack{
                            Circle().frame(width: 25, height: 25, alignment:.center)
                            Text("Apitoong")
                            Spacer()
                            Image(systemName: "circle.grid.2x2")
                        }
                        .padding()
                        Image("stevejob")
                            .resizable()
                            .frame(width: geo.size.width, height: geo.size.width, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .aspectRatio(contentMode: .fill)
                            .clipped()
                        
                        HStack{
                            
                            Image(systemName: self.isLike ? "heart.fill" : "heart")
                                .resizable()
                                .frame(width: 25, height: 25, alignment:    .center)
                                .onTapGesture(count: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/, perform: {
                                    self.isLike = !self.isLike
                                })
                                .foregroundColor(Color.red)
//                                .foregroundColor(Color.red)
                            Image(systemName: "message")
                                .resizable()
                                .frame(width: 25, height: 25, alignment:    .center)
                            Image(systemName: "paperplane")
                                .resizable()
                                .frame(width: 25, height: 25, alignment:    .center)
                            
                            Spacer()
                            Image(systemName: "bookmark")
                                .resizable()
                                .frame(width: 25, height: 25, alignment:    .center)
                        }
                        .padding([.leading, .trailing], 5)
                        .padding([.top, .bottom], 5)
                        
                        
                    }
                    .border(Color.gray)
                    
                }.padding()
                Spacer()
            }
            .navigationBarTitle("Instagram")
             
            
        }
        
    }
}

struct TapGestureHome_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureHome()
    }
}
