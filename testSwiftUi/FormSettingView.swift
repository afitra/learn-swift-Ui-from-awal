//
//  FormSetting.swift
//  testSwiftUi
//
//  Created by afitra mamor on 05/10/20.
//

 
import SwiftUI
 

// Screen width.

struct FormSettingView: View {
    
    var body: some View {
        
        NavigationView{
            Form{
                
                // section photo phrofile
                Section(){
                    NavigationLink(destination:ContentView()){
                        HStack(){
                            Image("Afitra_AF")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            VStack(alignment:.leading){
                                Text("Afitra Mamor Bikhoir")
                                    .font(.headline)
                                Text("Programmer")
                                    .font(.caption)
                            }
                        }
                        .padding(.top, 10)
                        .padding(.bottom,10)
                        
                    }
                
                    
                }
                Section(header: Text("Pengaturan Umum")){
                    NavigationLink(destination:ContentView()){

                        HStack(spacing:20){
                            Image(systemName: "star.fill")
                                .frame(width: 35, height: 35, alignment: .center)
                                .background(Color.yellow)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                            Text("Pesan Berbintang")
                                .font(.subheadline)

                        }
                    }
                    HStack(spacing:20){
                        NavigationLink(destination:ContentView()){

                            Image(systemName: "tv")
                                .frame(width: 35, height: 35, alignment: .center)
                                .background(Color.green)
                                .cornerRadius(10)
                            Text("WhatsApp Web/Desktop")
                                .font(.subheadline)

                        }
                    }
                }
                Section(header: Text("Pengaturan Akun")){

                    HStack(spacing:20){
                        NavigationLink(destination:ContentView()){

                            Image(systemName: "person")
                                .frame(width: 35, height: 35, alignment: .center)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                            Text("Akun")
                                .font(.subheadline)

                        }}

                    HStack(spacing:20){
                        NavigationLink(destination:ContentView()){

                            Image(systemName: "phone.circle")
                                .frame(width: 35, height: 35, alignment: .center)
                                .background(Color.purple)
                                .cornerRadius(10)
                            Text("Chat")
                                .font(.subheadline)

                        }
                    }
                }
            }
            .navigationBarTitle("Setting")
            
        }
       
        
    }
}

struct FormSettingView_Previews: PreviewProvider {
    static var previews: some View {
        FormSettingView()
        
        
    }
}
