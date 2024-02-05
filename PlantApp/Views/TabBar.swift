//
//  TabBar.swift
//  PlantApp
//
//  Created by Semih Güler on 5.02.2024.
//

import SwiftUI

struct TabBar: View {
    @StateObject var homeViewModel = HomeViewModel()
    @State private var isScanButtonTapped = false
    @State private var selectedTab = 0
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                HomeScreen(viewModel: homeViewModel)
                    .tabItem {
                        TabIcon(imageName: "home", title: "Home", isSelected: selectedTab == 0)
                    }
                    .tag(0)
                DiagnoseScreen()
                    .tabItem {
                        TabIcon(imageName: "healthcare", title: "Diagnose", isSelected: selectedTab == 1)
                    }
                    .tag(1)
                Text("Middle").opacity(0).disabled(true)
                    .tag(2)
                    .allowsHitTesting(false)
                MyGardenScreen()
                    .tabItem {
                        TabIcon(imageName: "myGarden", title: "My Garden", isSelected: selectedTab == 3)
                    }
                    .tag(3)
                
                ProfileScreen()
                    .tabItem {
                        TabIcon(imageName: "profile", title: "Profile", isSelected: selectedTab == 4)
                    }
                    .tag(4)
            }
            .accentColor(Color.green1)
            Rectangle()
                .frame(height: 0.5)
                .foregroundColor(.gray)
                .offset(y: -49)
            
            VStack {
                Spacer()
                Rectangle()
                    .fill(Color.white.opacity(0.0001))
                    .frame(width:86, height: 76)
                    .edgesIgnoringSafeArea(.bottom)
                    .offset(y: 10)
            }
            ScanButton()
                .frame(width: 60, height: 60)
                .offset(y: -10)
                .onTapGesture {
                    isScanButtonTapped.toggle()
                }
        }
        .sheet(isPresented: $isScanButtonTapped) {
            ScanScreen()
        }
    }
}


#Preview {
    TabBar()
}
