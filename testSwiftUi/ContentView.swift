//
//  ContentView.swift
//  testSwiftUi
//
//  Created by afitra mamor on 04/10/20.
//

import SwiftUI
 



struct LoginView :View{
    
    var body: some View {
        ZStack{
            Image("g1")
                .resizable()
                .edgesIgnoringSafeArea(.all)
//                .rotationEffect(.degrees(-90))
            
            VStack{
                Logo()
                FormBox()
            }
        }
    }
    
}

struct ContentView: View {
    @State private var toShow = false
    var body: some View {
//        ================================================= HALAMAN LOGIN
//        LoginView()
        
//        ================================================= HALAMAN SETTING
//        FormSettingView()
//        ================================================= HALAMAN YOUTUBE
//        ZStack{
//            TabView{
//                YoutubeHomeView()
//                    .tabItem{
//                        Image(systemName: "house.fill")
//                        Text("Beranda")
//                    }
//                FormSettingView()
//                    .tabItem{
//                        Image(systemName: "paperplane.fill")
//                        Text("Explorasi")
//                    }
//                YoutubeHomeView()
//                    .tabItem{
//                        Image(systemName: "tray.fill")
//                        Text("Subcription")
//                    }
//                YoutubeHomeView()
//                    .tabItem{
//                        Image(systemName: "envelope.fill")
//                        Text("Kotak Masuk")
//                    }
//                YoutubeHomeView()
//                    .tabItem{
//                        Image(systemName: "play.rectangle.fill")
//                        Text("Koleksi")
//                    }
//            }
//            .accentColor(.black)
//        }
//        ================================================= HALAMAN SEPEDA
        
//        SepedaHomeView()
        
//      ================================================= EnviromentLogin
//        EnviromentLoginView()
        
//      ================================================= Geometry Reader
//        GeometryReaderHome()
 
///      ================================================= Tap Gesture
        
//        TapGestureHome()
///      ================================================= Drag Gesture
        
//        DragGestureHomeView(showMenu:  $toShow)  // $toShow adalah default aja sebagai false
        
///      ================================================= DraawShape
        
//        DrawShapeHomeView()
        
///      ================================================= Fetch data from json
        FetchJsonDataHomeView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
        
    }
}

struct Logo : View {
    var body: some View {
        VStack{
            Image(systemName: "hand.raised")
                .resizable()
                .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color("satu"))
                .foregroundColor(Color.white)
                .cornerRadius(30)
                .padding()
                .background(Color.yellow)
                .cornerRadius(30)
            Text("Welcome to SwiftUI")
                .foregroundColor(.white)
            
        }
    }
}

struct FormBox: View {
    @State var username:String = ""
    @State var pass:String = ""
    var body: some View {
        VStack{
            Text("User Name")
                .font(.callout)
                .bold()
            TextField("Insert User name ....", text:$username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 250 , alignment: .center)
            
            Text("Password")
                .font(.callout)
                .bold()
            SecureField("Enter your Password ....", text:$pass)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 250 , alignment: .center)
            Button(action: {},label: {
                
                Text("Sign In")
                    .frame(width: 60 , height: 2, alignment: .center)
                    .font(.system(size: 12))
                
                
            })
            
            .buttonStyle(GradientButtonStyle())
            
            //            .padding()
            //            .background(Color.yellow)
            //            .cornerRadius(50)
            //            .foregroundColor(.black)
            //            .background(configuration.isPressed ? Color.green : Color.yellow)
        }
        .padding(.all,30)
        .background(Color.orange)
        .cornerRadius(15)
        
        
    }
}

struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(Color.white)
            .padding()
            .background(configuration.isPressed ? Color.green : Color.yellow)
            .cornerRadius(10)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
}
