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
            Image(systemName: "bell")
                .resizable()
                .frame(width: 32,height: 32)
        }
    }
}

struct CustomeEditText : View{
    @Binding var search:String
    var body: some View{
        TextField("Chair,desk,lamp etc",text: $search)
            .textFieldStyle(.plain)
            .padding()
            .border(.gray)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
