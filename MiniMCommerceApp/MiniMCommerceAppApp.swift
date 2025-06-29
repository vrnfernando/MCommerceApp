//
//  MiniMCommerceAppApp.swift
//  MiniMCommerceApp
//
//  Created by Vishwa Fernando on 2025-06-29.
//

import SwiftUI

@main
struct MiniMCommerceAppApp: App {
    let persistenceController = PersistenceController.shared

    @StateObject private var cartManager = CartManager()

      var body: some Scene {
          WindowGroup {
              TabView {
                  ProductListView()
                      .tabItem {
                          Label("Shop", systemImage: "bag")
                      }

                  CartView()
                      .tabItem {
                          Label("Cart", systemImage: "cart")
                      }.badge(cartManager.items.count) 
              }
              .environmentObject(cartManager)
          }
      }
}
