//
//  DetailView.swift
//  ObjectMapping
//
//  Created by Berkay Yaslan on 29.05.2022.
//
//let productID: Int
//let unitPrice: Double
//let quantity: Int
//let discount: Double


import SwiftUI

struct DetailView: View {
  
  var details: [Detail]
  
    var body: some View {
      VStack {
        ForEach(details, id:\.self) { detail in
          Text(String(detail.unitPrice))
          Text(String(detail.quantity))
          
        }
      }
    }
}
