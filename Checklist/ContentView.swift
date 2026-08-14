//
//  ContentView.swift
//  Checklist
//
//  Created by Aleks Jankowiak on 14/08/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List {
                Section(header:Text("High priority")){
                    Text("Walk the dog")
                    Text("Brush my teeth")
                    Text("Learn iOS development")
                    Text("Make dinner")
                    Text("Do laundry")
                    Text("Pay bills")
                    Text("Finish homework")
                    Text("Change internet provider")
                    Text("Read Raywenderlich.com")
                    Text("Clean the kitchen")
                    Text("Wash the car")
                }
                Section(header:Text("Low priority")){
                    Text("Soccer practice")
                    Text("Eat ice cream")
                    Text("Take vocal lessons")
                    Text("Record hit single")
                    Text("Learn every martial art")
                    Text("Design costume")
                    Text("Design crime-fighting vehicle")
                    Text("Come up with superhero name")
                    Text("Befriend space racoon")
                    Text("Save the world")
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Checklist")
        }
    }
}

#Preview {
    ContentView()
}
