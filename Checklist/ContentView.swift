//
//  ContentView.swift
//  Checklist
//
//  Created by Aleks Jankowiak on 14/08/2026.
//

import SwiftUI

struct ChecklistItem: Identifiable{
    let id = UUID()
    var name: String
    var isChecked: Bool = false
}

struct ContentView: View {
    @State var checklistItems=[
        ChecklistItem(name: "Walk the dog"),
        ChecklistItem(name: "Brush my teeth"),
        ChecklistItem(name:"Learn iOS development", isChecked: true),
        ChecklistItem(name: "Soccer practice"),
        ChecklistItem(name: "Eat ice cream", isChecked: false),
    
    ]
    
    var body: some View {
        NavigationView{
            List {
                ForEach(checklistItems){item in
                    HStack{
                        Text(item.name)
                        Spacer()
                        Text(item.isChecked ? "✅":"◼️")
                    }
                    .background(Color.white)
                    .onTapGesture {
                        if let matchingIndex = self.checklistItems.firstIndex(where: {
                            $0.id == item.id}){
                            self.checklistItems[matchingIndex].isChecked.toggle()
                        }
                        self.printChecklistContent()
                    }
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
