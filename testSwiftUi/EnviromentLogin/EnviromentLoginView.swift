//
//  EnviromentLoginView.swift
//  testSwiftUi
//
//  Created by afitra mamor on 16/10/20.
//

import Foundation

import SwiftUI


struct EnviromentLoginView: View {
    @EnvironmentObject var userAuth: AuthUser
    var body: some View {
//
        if !userAuth.isLogedin {
           return AnyView(Login())
        }else{

            return AnyView(EnviromentHome())
        }
//        Login()
        
//        EnviromentHome()
        
    }
    
}

struct EnviromentLoginView_Previews: PreviewProvider {
    static var previews: some View {
        EnviromentLoginView()
    }
}
