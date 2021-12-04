//
//  ContentView.swift
//  IOS project
//
//  Created by sai reddy on 2021-11-23.
//

import SwiftUI

//struct ContentView: View {
//    var body: some View {
//        Text("Hello, world!")
//            .padding()
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
struct ContentView: View {

//var body : some View{
//
//        VStack{
//            Image(systemName : "house")
//                .resizable().aspectRatio(contentMode: .fit)
//                .frame(width: 100, height: 100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center).padding()
//
//            Text("Ios Project App").font(.system(size: 30,weight: .light , design: .default)).padding()
//
//            NavigationLink(
//                destination: LoginScreen(),
//                label: {
//                    ContinueButton()
//                }
//            )
//
//        }.navigationTitle("Home")
//
//}
    
    @State var email = "";
    @State var password = "";
    var body: some View {
       
          NavigationView
          {
            VStack
            {
                Text("Login").font(.system(size: 30,weight: .bold , design: .default))
                
                Image(systemName : "person")
                    .resizable().aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center)
            
                VStack
                {
                    TextField("Enter Email Address", text: $email).padding()
                    SecureField("Enter Email Password", text: $password).padding()
                        .background(Color(.secondarySystemBackground))
    //                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
    //                        Text("Sign In")
    //                            .foregroundColor(Color.pink)
    //                            .frame(width: 200, height:50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    //                            .cornerRadius(8)
    //                            .background(Color.pink)
    //                    })
                    
                    NavigationLink(
                        destination: ContentView(),
                        label: {
                            LoginButton()
                        }
                    )
                    
                    NavigationLink(
                        destination: RegistrationView(),
                        label: {
                    RegistrationButton()
                        }
                    )            }
            
            }
          }
        
    }


}

struct LoginScreen: View {
@State var email = "";
@State var password = "";
var body: some View {
   
      NavigationView
      {
        VStack
        {
            Text("Login").font(.system(size: 30,weight: .bold , design: .default))
            
            Image(systemName : "person")
                .resizable().aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center)
        
            VStack
            {
                TextField("Email Address", text: $email).padding()
                SecureField("Email Password", text: $password).padding()
                    .background(Color(.secondarySystemBackground))
//                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
//                        Text("Sign In")
//                            .foregroundColor(Color.pink)
//                            .frame(width: 200, height:50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                            .cornerRadius(8)
//                            .background(Color.pink)
//                    })
                
                NavigationLink(
                    destination: ContentView(),
                    label: {
                        LoginButton()
                    }
                )
                
                NavigationLink(
                    destination: RegistrationView(),
                    label: {
                RegistrationButton()
                    }
                )            }
        
        }
      }
    
}

}


struct ContinueButton : View{

var body: some View{
    Text("Continue")
        .frame(width: 200/*@END_MENU_TOKEN@*/, height: 50, alignment: /*@START_MENU_TOKEN@*/.center)
        .background(Color.pink)
        .foregroundColor(.white)
        .cornerRadius(8)
}
}

struct LoginButton : View{

var body: some View{
    Text("Sign In")
        .frame(width: 200/*@END_MENU_TOKEN@*/, height: 50, alignment: /*@START_MENU_TOKEN@*/.center)
        .background(Color.pink)
        .foregroundColor(.white)
        .cornerRadius(8)
}
}

struct RegistrationButton: View{

var body: some View{
    Text("Register Here")
        .frame(width: 200/*@END_MENU_TOKEN@*/, height: 50, alignment: /*@START_MENU_TOKEN@*/.center)
        .background(Color.pink)
        .foregroundColor(.white)
        .cornerRadius(8)
}
}


struct SubmitButton: View{

var body: some View{
    Text("Submit")
        .frame(width: 200/*@END_MENU_TOKEN@*/, height: 50, alignment: /*@START_MENU_TOKEN@*/.center)
        .background(Color.pink)
        .foregroundColor(.white)
        .cornerRadius(8)
}
}



struct HomeScreen: View {
  //  @StateObject var viewmodel = ViewModel()

    var body: some View {
       
       
        Text("Welcome To IOS Application!")
            .padding()

        
    }

}


struct RegistrationView: View {
@State var name = "";
@State var email = "";
@State var phone = "";
@State var password = "";
var body: some View {
   
      NavigationView
      {
        VStack
        {
            Text("Registration").font(.system(size: 30,weight: .bold , design: .default))
            
//            Image(systemName : "person")
//                .resizable().aspectRatio(contentMode: .fit)
//                .frame(width: 50, height: 50/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center)
            VStack
            {
                TextField("Fullname", text: $name).padding()
                TextField("Email Address", text: $email).padding()
                TextField("Phone", text: $phone).padding()
                SecureField("Email Password", text: $password).padding()
                    .background(Color(.secondarySystemBackground))
//                    Button(action: /@START_MENU_TOKEN@/{}/@END_MENU_TOKEN@/, label: {
//                        Text("Sign In")
//                            .foregroundColor(Color.pink)
//                            .frame(width: 200, height:50, alignment: /@START_MENU_TOKEN@/.center/@END_MENU_TOKEN@/)
//                            .cornerRadius(8)
//                            .background(Color.pink)
//                    })
                
                NavigationLink(
                    destination: ContentView(),
                    label: {
                        SubmitButton()
                    }
                )

               
            }
        
        }
      }
    
}

}





struct ContentView_Previews: PreviewProvider {
static var previews: some View {
    LoginScreen()
}
}
