//
//  AuthUser.swift
//  testSwiftUi
//
//  Created by afitra mamor on 16/10/20.
//

import Foundation

class AuthUser :ObservableObject{
    @Published var isLogedin: Bool = false /// untuk session user yg login
    
    @Published var isCorrect: Bool = true /// untuk print kesalahan
}
