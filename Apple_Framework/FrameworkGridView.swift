//
//  ContentView.swift
//  Apple_Framework
//
//  Created by Chamod Dilushanka on 2024-02-11.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let columns : [GridItem] = [GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible())]
    
    var body: some View {
        
        NavigationView{
            
            ScrollView{
                LazyVGrid(columns:columns){
                    ForEach(MockData.frameworks, id: \.id){framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            
            .navigationTitle("Apple Framework")
            .sheet(isPresented: $viewModel.isShowingDetailsView){
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework,isShowingDetailsView: $viewModel.isShowingDetailsView)
            }
        }
        
        
    }
}

#Preview {
    FrameworkGridView()
}

struct FrameworkTitleView: View{
    
    let framework : Framework
    
    var body: some View{
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90,height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }.padding()
    }
}


