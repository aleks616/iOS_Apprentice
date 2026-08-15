//
//  Checklist.swift
//  Checklist
//
//  Created by Aleks Jankowiak on 15/08/2026.
//

import Foundation
import Combine
import SwiftUI

class Checklist: ObservableObject{
    @Published var items=[
        ChecklistItem(name: "Walk the dog"),
        ChecklistItem(name: "Brush my teeth"),
        ChecklistItem(name:"Learn iOS development", isChecked: true),
        ChecklistItem(name: "Soccer practice"),
        ChecklistItem(name: "Eat ice cream", isChecked: false),
    
    ]
    
    func printChecklistContent(){
        for item in items{
            print(item)
        }
    }
    
    func deleteListItem(whichElement: IndexSet){
        items.remove(atOffsets: whichElement)
        printChecklistContent()
    }
    
    func moveListItem(whichElement: IndexSet, destination:Int){
        items.move(fromOffsets: whichElement, toOffset: destination)
        printChecklistContent()
    }
}
