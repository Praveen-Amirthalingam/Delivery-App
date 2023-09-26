//
//  CategoriesView.swift
//  Delivery App
//
//  Created by apple on 25/09/23.
//

import SwiftUI

struct CategoriesView: View {
    @Environment(\.dismiss) private var dismiss

    @State private var searchText = ""
    
    let gridItems = [GridItem(.flexible()),
                     GridItem(.flexible())]
    @State var people = [Person]()
    @State var filteredpeople = [Person]()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                LazyVGrid(columns: gridItems, spacing: 20) {
                    ForEach(self.filteredpeople, id: \.self) { person in
                        GridColumn(item: person)
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
            .navigationTitle(Constants.Content.Text.Categories)
            .navigationBarHidden(false)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        HStack {
                            Constants.Design.Images.back
                                .foregroundColor(Constants.Design.Colors.Text.primary)
                            Spacer()
                        }
                    }
                }
            }
            .searchable(text: $searchText) {
                ForEach(searchResults, id: \.self) { person in
                    GridColumn(item: person)
                }
            }
        }
        .onAppear(perform: {
            self.getDataAndDisplay(completion: { persons in
                self.people = persons
                self.filteredpeople = persons
            })
        })
    }
    
    var searchResults: [Person] {
        if searchText.isEmpty {
            return people
        } else {
            return people.filter { $0.firstName.contains(searchText)}
        }
    }
    
    func getDataAndDisplay(completion:@escaping ([Person]) -> ()) {
        if let path = Bundle.main.path(forResource: "people", ofType: "json") {
            do {
                  let data = try Data(contentsOf: URL(fileURLWithPath: path))
                let jsonData = try JSONDecoder().decode([Person].self, from: data)
                  completion(jsonData)
              } catch {
                   // handle error
              }
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
