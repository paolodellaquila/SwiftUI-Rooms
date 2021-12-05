//
//  ContentView.swift
//  MovieApp
//
//  Created by Francesco Paolo Dellaquila
//

import SwiftUI

struct AddRoomScreen: View {
    
    @Environment(\.presentationMode) var presentation
    @StateObject private var addRoomVM = AddRoomViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    TextField("Enter room", text: $addRoomVM.name)
                    TextField("Enter width", text: $addRoomVM.width)
                    TextField("Enter length", text: $addRoomVM.length)
                    ColorPicker("Select color", selection: $addRoomVM.color)
                    
                    HStack {
                        Spacer()
                        Button("Save") {
                            addRoomVM.saveRoom()
                            presentation.wrappedValue.dismiss()
                        }
                        Spacer()
                    }

                }
            }
            .navigationTitle("Add Room")
        }
    }
}

struct AddRoomScreen_Previews: PreviewProvider {
    static var previews: some View {
        AddRoomScreen()
    }
}
