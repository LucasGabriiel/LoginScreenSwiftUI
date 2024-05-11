import SwiftUI
import AuthenticationServices

struct ContentView: View {
    @State private var showPassword = false
    @State var password = ""
    @State var email = ""
    @State var Ison = false
    
    let gradient = Gradient(colors: [Color("Color1"), Color("Color2")])
    
    var body: some View {
        ZStack {
            VStack {
                ZStack {
                           Rectangle()
                               .fill(
                                   LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom)
                               )
                           Image("yosda-logo")
                               .resizable()
                               .aspectRatio(contentMode: .fit)
                               .frame(height: 100)
                }.frame(height: 360)
                Spacer()
            }.ignoresSafeArea()
            
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
                            .font(.callout)
                            .fontWeight(.semibold)
                            .foregroundColor(.gray)
                        
                        TextField("Digite seu email", text: $email)
                            .textFieldStyle(.roundedBorder)
                            .frame(height: 45)
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
                                .frame(height: 45)
                            }
                            else {
                                SecureField(" Digite sua senha",
                                            text: $password)
                                .frame(height: 45)
                                
                            }
                            Button(action: { self.showPassword.toggle()}) {
                                
                                Image(systemName: "eye")
                                    .foregroundColor(.secondary)
                                    .padding(.trailing)
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
                    }.padding(.top, 10)
                    
                    VStack(alignment: .center, spacing: 13.0) {
                        Button(action: {}, label: {
                            Spacer()
                            Text("Criar conta")
                                .padding()
                            Spacer()
                            
                        }).frame(height: 50)
                            .background(.color2)
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
                    } .padding(.top, 25)
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
