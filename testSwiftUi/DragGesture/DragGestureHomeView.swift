//
//  DragGestureHomeView.swift
//  testSwiftUi
//
//  Created by afitra mamor on 24/10/20.
//

import Foundation
import SwiftUI

struct DragGestureHomeView: View {
    @Binding var showMenu : Int
    var body :  some  View {
        ZStack{
            Color.orange
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image("billgates")
                    .resizable()
                    .frame(width: 300, height: 300, alignment:  .center)
                    .clipShape(Circle())
//                    .cornerRadius(20)
                Button(action:{}){
                    Text("Promo merdeka")
                        .padding()
                        .background(Color.green)
                        .cornerRadius(20)
                        .foregroundColor(.white)
                    
                }
                
            }
            if (self.showMenu == true){
                Kupon(showMenu: showMenu = true)
            }
        }
    }
}



struct DragGestureHomeView_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureHomeView()
    }
}
