//
//  ContentView.swift
//  Checklist
//
//  Created by Aleks Jankowiak on 14/08/2026.
//

import SwiftUI


struct ChecklistView: View {
    
    @ObservedObject var checklist = Checklist()
    
    var body: some View {
        NavigationView{
            List {
                ForEach(checklist.items){item in
                    HStack{
                        Text(item.name)
                        Spacer()
                        Text(item.isChecked ? "✅":"◼️")
                    }
                    .background(Color.white)
                    .onTapGesture {
                        if let matchingIndex = self.checklist.items.firstIndex(where: {
                            $0.id == item.id}){
                            self.checklist.items[matchingIndex].isChecked.toggle()
                        }
                        self.checklist.printChecklistContent()
                    }
                }
                .onDelete(perform: checklist.deleteListItem)
                .onMove(perform: checklist.moveListItem)
            }
            .navigationBarItems(trailing: EditButton())
            .navigationBarTitle("Checklist")
            .onAppear(){
                self.checklist.printChecklistContent()
            }
        }
    }
    
}

#Preview {
    ChecklistView()
}
