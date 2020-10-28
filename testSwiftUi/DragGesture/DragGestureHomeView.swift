//
//  DragGestureHomeView.swift
//  testSwiftUi
//
//  Created by afitra mamor on 24/10/20.
//

import Foundation
import SwiftUI

struct DragGestureHomeView: View {
    @Binding var showMenu : Bool
    @State private var offset = CGSize.zero
 
    var body :  some  View {
    
        let myCostomDrag = DragGesture()
            .onChanged{
                gesture in
                self.offset = gesture.translation // translation  == mengikuti gerakan pencetan layar
            }
            .onEnded{
                value in
                self.offset = CGSize.zero // jadi kosong lagi
//                self.offset = value.translation
                self.showMenu = false
            }
        return ZStack{
            Color.orange
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image("billgates")
                    .resizable()
                    .frame(width: 300, height: 300, alignment:  .center)
                    .clipShape(Circle())
//                    .cornerRadius(20)
                Button(action:{
                    self.showMenu = !self.showMenu
                }){
                    Text("Promo merdeka")
                        .padding()
                        .background(Color.green)
                        .cornerRadius(20)
                        .foregroundColor(.white)
                    
                }
                
            }
            if (self.showMenu == true){
                Kupon(showMenu:  self.$showMenu)
                    .transition(.move(edge: .bottom))
                    .animation(.default)
                    .offset(y:self.offset.height)
                    .gesture(myCostomDrag)
                
            }
        }
    }
}


//
//struct DragGestureHomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        DragGestureHomeView()
//    }
//}
