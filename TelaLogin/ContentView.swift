import SwiftUI

struct ContentView: View {
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
                    
                    VStack(alignment: .leading, spacing: 1.0) {
                        
                        Text("E-mail")
                            .fontWeight(.semibold)
                            .foregroundColor(.gray)
                        
                        @State var textImput = ""
                        
                        TextField("Digite seu email", text: $textImput)
                            .textFieldStyle(.roundedBorder)
                            .overlay {
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(.purple, lineWidth: 1)
                            }
                    }.padding(.top, 4.0)
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
