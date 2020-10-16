//
//  EnviromentLoginView.swift
//  testSwiftUi
//
//  Created by afitra mamor on 16/10/20.
//

import Foundation

import SwiftUI


struct EnviromentLoginView: View {
    
    var body: some View {
        
        Login()
        
    }
    
}

struct EnviromentLoginView_Previews: PreviewProvider {
    static var previews: some View {
        EnviromentLoginView()
    }
}
struct Login :View{
    @State var username:String=""
    @State var password:String=""
    
    
    let abuabu = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)
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
                    TextField("username .....",text:$username)
                        .padding()
                        .background(abuabu)
                        .cornerRadius(5.0)
                    
                    Text("password")
                    TextField("password .....",text:$password)
                        .padding()
                        .background(abuabu)
                        .cornerRadius(5.0)
                    
                    Text("Forgot Password ?")
                        .foregroundColor(.blue)
                        .font(.callout)
                    HStack{
                        Spacer()
                        Button(action:{print("okoko")}){
                            Text("Sign up")
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
