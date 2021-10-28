//
//  CoreDataView.swift
//  sanboxIOSSwiftUI2021
//
//  Created by lionel jones on 10/24/21.
//The No symbol named '' is there because we are building in iOS 15 now
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
    
    @State var mCategory:String = "";
    @State var mMake:String = "";

    //@FocusState private var mCategoryIsFocused: Bool;
    //@FocusState private var mMakeIsFocused: Bool;
    
    
    
    
    var body: some View {
        
        VStack (spacing: 20){//VStack Container
           
            VStack{
                Label("Enter a Category for Car",systemImage: "")
                      .frame(width: 280, height: 50)
                      
                TextField(
                        "",
                        text: $mCategory
                 )
                .frame(width: 280, height: 50)
                .padding(4)
                .border(Color.gray, width: 1)
                //.focused($mCategoryIsFocused)
              
                Label("Enter Model Name",systemImage: "")
                      .frame(width: 280, height: 50)
                TextField(
                        "",
                        text: $mMake
                 )
                 .frame(width: 280, height: 50)
                 .padding(4)
                 .border(Color.gray, width: 1)
                //.focused($mMakeIsFocused)
            }
           
           
            Button(action: {
                let category = Category(context: manageObjectContext)
                category.name = mCategory
                PersistenceController.shared.save()
                //mMakeIsFocused = false;
                hideKeyboard()
                
            }, label: {
                Text("Add Category")
            })
            .frame(width: 280, height: 50)
            .font(.system(size:20,weight: .bold,design: .default))
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .cornerRadius(40)
            
            Button(action: {
                let item = Item(context: manageObjectContext)
                item.name = mMake
                item.toCatagory  = categories[0]
                PersistenceController.shared.save()
                hideKeyboard()
                //mMakeIsFocused = false;
            }, label: {
                Text("Add Model")
            })
            .frame(width: 280, height: 50)
            .font(.system(size:20,weight: .bold,design: .default))
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .cornerRadius(40)
            
            Button(action: {
                let category = categories[0]
                PersistenceController.shared.delete(category)
                hideKeyboard()
                //mMakeIsFocused = false;
                //mMakeIsFocused = false;
                
            }, label: {
                Text("Delete Category")
            })
            .frame(width: 280, height: 50)
            .font(.system(size:20,weight: .bold,design: .default))
            .background(Color(.systemRed))
            .foregroundColor(.white)
            .cornerRadius(40)
            
            /*
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
            */
            
            
            List {
                ForEach(items, id:\.self) {
                    item in
                    Text("\(item.name ?? "Unknown") - \(item.toCatagory?.name ?? "Unknown")")
                }
                .onDelete(perform: removeItem)
            }
            
        }//VStack Container
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

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder),to: nil,from: nil,for: nil)
    }
}
#endif
