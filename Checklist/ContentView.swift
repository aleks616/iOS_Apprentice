//
//  ContentView.swift
//  Checklist
//
//  Created by Aleks Jankowiak on 14/08/2026.
//

import SwiftUI

struct ContentView: View {
    @State var checklistItems=[
        "Walk the dog",
        "Brush my teeth",
        "Learn iOS development",
        "Soccer practice",
        "Eat ice cream",
        "Take vocal lessons",
        "Record hit single",
        "Learn every martial art",
        "Design costume",
        "Save the world",
        "Come up with superhero name",
        "Befriend space raccoon",
        "Star in blockbuster movie",
    ]
    
    var body: some View {
        NavigationView{
            List {
                ForEach(checklistItems, id: \.self){item in
                    Text(item)
                }
                .onDelete(perform: deleteListItem)
                .onMove(perform: moveListItem)
            }
            .navigationBarItems(trailing: EditButton())
            .navigationBarTitle("Checklist")
            .onAppear(){
                self.printChecklistContent()
            }
        }
    }
    
    func printChecklistContent(){
        for item in checklistItems{
            print(item)
        }
    }
    
    func deleteListItem(whichElement: IndexSet){
        checklistItems.remove(atOffsets: whichElement)
        printChecklistContent()
    }
    
    func moveListItem(whichElement: IndexSet, destination:Int){
        checklistItems.move(fromOffsets: whichElement, toOffset: destination)
        printChecklistContent()
    }
}

#Preview {
    ContentView()
}
