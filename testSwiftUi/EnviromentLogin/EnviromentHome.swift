//
//  EnviromentHome.swift
//  testSwiftUi
//
//  Created by afitra mamor on 20/10/20.
//

import Foundation
import SwiftUI


struct EnviromentHome:View {
    
    
    @EnvironmentObject var userAuth: AuthUser
    
    
    var body : some View{
        NavigationView{
            ZStack{
                Color.purple
                Text("Home")
                    .foregroundColor(.white)
                    .navigationBarTitle("Home",displayMode: .inline)
                    .navigationBarItems(trailing:
                                            Button(action:{self.userAuth.isLogedin = false}){
                                                Image(systemName: "arrowhape.turn.up.right.circle")
                                            }
                    )
            }
        }
    }
}
struct EnviromentHome_Previews: PreviewProvider {
    static var previews: some View {
        EnviromentHome()
    }
}
