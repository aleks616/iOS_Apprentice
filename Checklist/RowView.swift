//
//  RowView.swift
//  Checklist
//
//  Created by Aleks Jankowiak on 15/08/2026.
//

import SwiftUI

struct RowView: View {
    
    @Binding var checklistItem: ChecklistItem
    
    var body: some View {
        NavigationLink(destination:
            EditChecklistItemView(checklistItem: $checklistItem)){
            HStack{
                Text(checklistItem.name)
                Spacer()
                Text(checklistItem.isChecked ? "✅":"◼️")
            }
        }
    }
}

#Preview {
    RowView(checklistItem: .constant(ChecklistItem(name: "Sample item")))
}
