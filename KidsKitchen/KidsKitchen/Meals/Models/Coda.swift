//
//  Coda.swift
//  KidsKitchen
//
//  Created by Joscha Amani Gaber on 19.09.24.
//

import Foundation

import Foundation

// MARK: - GetTableModelCoda
struct GetTableModelCoda: Codable {
    let id, type, tableType: String
    let href, browserLink: String
    let name: String
    let rowCount: Int
    let createdAt, updatedAt, viewId: String
    let layout: String
}

// MARK: - DisplayColumn
struct DisplayColumn: Codable {
    let id, type: String
    let href: String
}

// MARK: - Parent
struct Parent: Codable {
    let id, type: String
    let href, browserLink: String
    let name: String
}


//// MARK: - GetTableModelCoda
//struct GetTableModelCoda: Codable {
//    let id, type, tableType: String
//    let href, browserLink: String
//    let name: String
//    let parent: Parent
//    let parentTable: ParentTable
//    let displayColumn: Column
//    let rowCount: Int
//    let sorts: [Sort]
//    let layout: String
//    let filter: Filter
//    let createdAt, updatedAt: String
//}
//
//// MARK: - Column
//struct Column: Codable {
//    let id, type: String
//    let href: String
//}
//
//// MARK: - Filter
//struct Filter: Codable {
//    let valid, isVolatile, hasUserFormula, hasTodayFormula: Bool
//    let hasNowFormula: Bool
//}
//
//// MARK: - Parent
//struct Parent: Codable {
//    let id, type: String
//    let href, browserLink: String
//    let name: String
//}
//
//// MARK: - ParentTable
//struct ParentTable: Codable {
//    let id, type, tableType: String
//    let href, browserLink: String
//    let name: String
//    let parent: Parent
//}
//
//// MARK: - Sort
//struct Sort: Codable {
//    let column: Column
//    let direction: String
//}
