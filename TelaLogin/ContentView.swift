import SwiftUI
import AuthenticationServices

struct ContentView: View {
    @State private var showPassword = false
    @State var password = ""
    @State var email = ""
    @State var Ison = false

    
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.indigo)
                .edgesIgnoringSafeArea(.all)
            VStack {
                
                HStack {
                    Spacer()
                    Image(systemName: "mustache.fill")
                        .imageScale(.large)
                    Text("Mustache")
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .font(.title)
                        .multilineTextAlignment(.center)
                    Image(systemName: "mustache.fill")
                        .imageScale(.large)
                    Spacer()
                }
                Spacer()
            }
            .padding(.top)
            .padding(.horizontal)
            
            
            ZStack {
                Rectangle()
                    .fill(Color.white)
                    .cornerRadius(20)
                    .shadow(radius: 10)
                
                VStack(alignment: .leading) {
                    
                    Text("Crie sua conta")
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .font(.title)
                        .multilineTextAlignment(.leading)
                    
                    VStack(alignment: .leading, spacing: 4) {
                        
                        Text("E-mail")
                            .fontWeight(.semibold)
                            .foregroundColor(.gray)
                                                
                        TextField("Digite seu email", text: $email)
                            .textFieldStyle(.roundedBorder)
                            .frame(height: 38)
                            .overlay {
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(.purple, lineWidth: 1)
                            }
                    }.padding(.top, 4.0)
                    
                    VStack(alignment: .leading, spacing: 3) {
                        
                        HStack {
                            Text("Senha")
                                .fontWeight(.semibold)
                                .foregroundColor(.gray)
                            Spacer()
                            Button("Recuperar Senha") {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            }
                        }
                        
                        HStack {
                            if showPassword {
                                TextField("Password",
                                          text: $password)
                                .frame(height: 38)
                            }
                            else {
                                SecureField(" Digite sua senha",
                                            text: $password)
                                .frame(height: 38)
                                
                            }
                            Button(action: { self.showPassword.toggle()}) {
                                
                                Image(systemName: "eye")
                                    .foregroundColor(.secondary)
                            }
                        } .overlay {
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(.purple, lineWidth: 1)
                        }
                    }.padding(.top, 15)
                    HStack {
                        Text(" Lembrar minha senha")
                            .font(.caption)
                            .foregroundStyle(.black)
                        Spacer()
                        Toggle(isOn: $Ison) {
                        
                        }
                    }
                    VStack(alignment: .center, spacing: 13.0) {
                        Button(action: {}, label: {
                            Spacer()
                            Text("Criar conta")
                                .padding()
                            Spacer()
                                
                        }).frame(height: 50)
                        .background(.purple)
                        .foregroundColor(.white)
                        .cornerRadius(7)
                        
                        SignInWithAppleButton(
                            onRequest: { request in
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Code@*/ /*@END_MENU_TOKEN@*/
                            },
                            onCompletion: { result in
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Code@*/ /*@END_MENU_TOKEN@*/
                            }
                        ).frame(height: 50)
                        
                        HStack {
                            Text(" Já possui uma conta?")
                                .font(.body)
                                .foregroundStyle(.gray)
                            Button("Entre") {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            }
                        }
                    } .padding([.leading, .trailing], 0)
                    Spacer()
                }
                .padding(.top, 45.0)
                .padding([.leading, .trailing], 16.0)
            } .padding(.top, 250)
            
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
