//
//  EnviromentLogin.swift
//  testSwiftUi
//
//  Created by afitra mamor on 20/10/20.
//

import Foundation
import SwiftUI
struct Login :View {
    @EnvironmentObject var userAuth: AuthUser

    @State var username:String=""
    @State var password:String=""
    
    
    let abuabu = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)
    
    func onType(){
    
        userAuth.isCorrect = true
        
    }
    func cekLogin(){
        if (username == "admin" && password == "123"){
            userAuth.isLogedin = true
            userAuth.isCorrect = true
        }else{
            userAuth.isLogedin = false
            userAuth.isCorrect = false
        }
    }
    
    var body : some View{
        ZStack{
            Color.white
                .edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    HStack{
                        VStack{
                            Text("Hi !!!")
                                .bold()
                                .font(.largeTitle)
                                .foregroundColor(Color.white)
                            Text("Welcome back!")
                                .font(.title)
                                .foregroundColor(Color.white)
                        }
                        Spacer()
                        Image("lock2")
                            .resizable()
                            .frame(width: 120, height: 80 )
                            .padding()
                    }
                    Spacer()
                    
                }
                .frame(height:  180)
                .padding(30)
                .background(Color.blue)
                .clipShape(CostomShape(corner:.bottomRight, radii:50))
//                .clipShape(CostomShape(corner:.bottomLeft, radii:50))
                .edgesIgnoringSafeArea(.top)
                
                
                VStack(alignment:.leading){
                    Text("Username / Email address")
                    TextField("username .....",text:$username, onEditingChanged : { _ in self.onType()})
                        .padding()
                        .background(abuabu)
                        .cornerRadius(5.0)
                        .autocapitalization(.none)
                    
                    Text("password")
                    SecureField("password .....",text:$password)
                        .padding()
                        .background(abuabu)
                        .cornerRadius(5.0)
                    
                    // tamolikan kesalahan
                    if(!userAuth.isCorrect){
                        Text("User n Password salah! ")
                            .foregroundColor(.red)
                    }
                    
                    
                    Text("Forgot Password ?")
                        .foregroundColor(.blue)
                        .font(.callout)
                    HStack{
                        Spacer()
                        Button(action:{self.cekLogin()}){
                            Text("Sign In")
                                .bold()
                                .font(.callout)
                                .foregroundColor(.white)
                        }
                        Spacer()
                        
                        
                    }
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(15)
                    
                    
                    HStack{
                        Spacer()
                        Text("Our privacy policy")
                            
                            .font(.callout)
                            .foregroundColor(.blue)
                        Spacer()
                    }
                    
                    HStack{
                        Text("Dont have an account ?")
                            .bold()
                        Spacer()
                        Text("SIgn Up")
                    }
                    .padding()
                    .foregroundColor(.blue)
                    
                }
                .padding(.all, 30)
                
                
                
                Spacer()
            }
        }
    }
}

struct CostomShape : Shape {
    var corner : UIRectCorner
    var radii: CGFloat
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect,  byRoundingCorners: corner, cornerRadii: CGSize(width: radii, height: radii))
        return Path(path.cgPath)
    }
}
