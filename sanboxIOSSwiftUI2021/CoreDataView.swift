//
//  CoreDataView.swift
//  sanboxIOSSwiftUI2021
//
//  Created by lionel jones on 10/24/21.
//

import SwiftUI

struct CoreDataView: View {
    
    //create a fetch request from our dataStore
    @Environment(\.managedObjectContext) var manageObjectContext
    
    //fetch your items
    @FetchRequest(entity: Item.entity(),
                  sortDescriptors:
                    [NSSortDescriptor(keyPath: \Item.name, ascending:true )])
    var items: FetchedResults<Item>
    
    //fetch your categories
    @FetchRequest(entity: Category.entity(),
                  sortDescriptors:
                    [NSSortDescriptor(keyPath: \Category.name, ascending:true )])
    var categories: FetchedResults<Category>
    
    @State private var isActionSheetPresented = false
    @State private var isAlertPresented = false
    
    var body: some View {
        VStack{
            
            Button(action: {
                let category = Category(context: manageObjectContext)
                category.name = "Porsche"
                PersistenceController.shared.save()
            }, label: {
                Text("Add Category")
            })
            
            Button(action: {
                let category = categories[0]
                PersistenceController.shared.delete(category)
                
            }, label: {
                Text("Delete Category")
            })
            
            
            
            Button(action: {
                if categories.count == 0 {
                    isAlertPresented.toggle()
                }
                else
                {
                    isActionSheetPresented.toggle()
                }
                
            }, label: {
                Text("Add Item")
            })
            .actionSheet(isPresented: $isActionSheetPresented, content: {
                    var buttons = [ActionSheet.Button]()
                    categories.forEach {
                        (category) in
                        let button = ActionSheet.Button.default(Text("\(category.name ?? "Unknown")")) {
                            let item = Item(context: manageObjectContext)
                            item.name = "Cayman"
                            item.toCatagory  = category
                            PersistenceController.shared.save()
                        }
                        buttons.append(button)
                    }
                    buttons.append(.cancel())
                    return ActionSheet(title: Text("Please select a catagory"),
                           message: nil,buttons: buttons)
            })
            .alert(isPresented:$isAlertPresented, content: {
                Alert(title: Text("Please add a category"), message: nil, dismissButton: .cancel(Text("OK")))
            })
            
            List {
                ForEach(items, id:\.self) {
                    item in
                    Text("\(item.name ?? "Unknown") - \(item.toCatagory?.name ?? "Unknown")")
                }
                .onDelete(perform: removeItem)
            }
           
            
        }
    }
    
    func removeItem(at offsets: IndexSet) {
        for index in offsets {
            let item = items[index]
            PersistenceController.shared.delete(item)
        }
    }
}

struct CoreDataView_Previews: PreviewProvider {
    static var previews: some View {
        CoreDataView()
    }
}
