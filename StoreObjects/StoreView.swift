/*
See LICENSE folder for this sample’s licensing information.

Abstract:
The view for the store.
*/

import SwiftUI
import StoreKit

struct StoreView: View {
    @EnvironmentObject var store: Store

    var body: some View {
        List {
            Section("Buy Once") {
                ForEach(store.cars) { product in
                    
                    NavigationLink {
                        ProductDetailView(product: product)
                    } label: {
                        ListCellView(product: product)
                    }
                }
            }
            .listStyle(GroupedListStyle())


            .listStyle(GroupedListStyle())
            
            Section("Buy Subscription") {
                //if !store.purchasedNonRenewableSubscriptions.isEmpty || !store.purchasedSubscriptions.isEmpty {
                
                
                ForEach(store.subscriptions) { product in
                    
                    //ListCellView (product: product, purchasingEnabled: store.purchasedSubscriptions.isEmpty)
                    
                    NavigationLink {
                        ProductDetailView(product: product)
                    } label: {
                        ListCellView(product: product)
                    }
                }
                }
                
            
            .listStyle(GroupedListStyle())
            
            Button("Restore Purchases", action: {
                Task {
                    //This call displays a system prompt that asks users to authenticate with their App Store credentials.
                    //Call this function only in response to an explicit user action, such as tapping a button.
                    try? await AppStore.sync()
                }
            })

        }
        .navigationTitle("Harmonica Toolkit")
    }
}

