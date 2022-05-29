//
//  Orders.swift
//  ObjectMapping
//
//  Created by Berkay Yaslan on 29.05.2022.
//s
//DetailPage: Iphone -> 2 * 200 = 400

import SwiftUI
import Alamofire

struct Orders: View {
  
  @State var orders : [WelcomeElement] = []
  
  var body: some View {
    NavigationView {
      List {
        ForEach(orders, id:\.self) { item in
          NavigationLink(destination: DetailView(details: item.details)) {
            Text(item.customerID)
          }
        }
      }.onAppear(){
        let request = AF.request("https://northwind.vercel.app/api/orders");
        
        request.responseDecodable(of: [WelcomeElement].self) { response in
          orders = response.value ?? []
        }
      }
    }
  }
}

struct Orders_Previews: PreviewProvider {
  static var previews: some View {
    Orders()
  }
}
