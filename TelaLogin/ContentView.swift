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
           
            Rectangle()
                .fill(Color.white)
                .cornerRadius(20)
                .shadow(radius: 10)
                .padding(.top, 250)
            
            Text("Crie sua conta")
                .fontWeight(.semibold)
                .foregroundColor(.black)
                .font(.title)
                .multilineTextAlignment(.leading)
                .padding([.bottom, .trailing], 190.0)
            
            Text("E-mail")
                .fontWeight(.semibold)
                .foregroundColor(.gray)
                .padding(/*@START_MENU_TOKEN@*/.trailing, 314.0/*@END_MENU_TOKEN@*/)
                .padding(.bottom, 111)
            
                
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
