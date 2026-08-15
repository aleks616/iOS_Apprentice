//
//  ChecklistItem.swift
//  Checklist
//
//  Created by Aleks Jankowiak on 15/08/2026.
//

import Foundation


struct ChecklistItem: Identifiable, Codable{
    let id = UUID()
    var name: String
    var isChecked: Bool = false
}
