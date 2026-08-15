//
//  EditChecklistItemView.swift
//  Checklist
//
//  Created by Aleks Jankowiak on 15/08/2026.
//

import SwiftUI

struct EditChecklistItemView: View {
    
    @Binding var checklistItem: ChecklistItem
    
    var body: some View {
        Form{
            TextField("Name", text: $checklistItem.name)
            Toggle("Completed", isOn: $checklistItem.isChecked)
        }
    }
}

#Preview {
    EditChecklistItemView(checklistItem: .constant(ChecklistItem(name: "Sample item")))
}
