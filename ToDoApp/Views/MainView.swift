//
//  ContentView.swift
//  ToDoApp
//
//  Created by Richard on 14/05/2024.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewModel()
    var body: some View {
        if viewModel.isSignedIn , !viewModel.currentUserId.isEmpty {
            //signed in show to do list
            ToDoListView()
        }else{
            LogInView()

        }
        
    }
}

#Preview {
    MainView() 
}
