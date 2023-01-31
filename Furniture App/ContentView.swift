//
//  ContentView.swift
//  Furniture App
//
//  Created by jayant kumar on 31/01/23.
//

import SwiftUI

struct ContentView: View {
    @State var search = ""
    var body: some View {
        ScrollView {
            VStack{
                HomeHeader()
                CustomeEditText(search: $search)
            }
        }
        .padding(20)
    }
}

struct HomeHeader : View{
    var body: some View{
        HStack{
            Text("Explore What\nYour Home Needs")
                .font(.title)
                .foregroundColor(.black)
            Spacer()
            Button{
                
            }label: {
                Image(systemName: "bell")
                    .resizable()
                    .frame(width: 32,height: 32)
                
            }
        }
    }
}

struct CustomeEditText : View{
    @Binding var search:String
    var body: some View{
        HStack{
            Image(systemName: "magnifyingglass")
            TextField("Chair,desk,lamp etc",text: $search)
        }.padding()
            .cornerRadius(10)
            .padding(3)
            .foregroundColor(.black)
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(LinearGradient(gradient: Gradient(colors: [.gray, .gray]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2.5))
            .shadow(radius: 10)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
