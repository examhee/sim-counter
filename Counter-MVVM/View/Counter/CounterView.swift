//
//  CounterView.swift
//  Counter-MVVM
//
//  Created by 최형우 on 2022/03/11.
//

import SwiftUI

struct CounterView: View {
    @StateObject var viewModel = CounterViewModel()
    var body: some View {
        VStack {
            Text("\(viewModel.count)")
                .font(.title)
                .foregroundColor(.black)
            HStack {
                Spacer()
                Button {
                    viewModel.count += 1
                } label: {
                    Text("+")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                }
                Spacer()
                Button {
                    viewModel.count -= 1
                } label: {
                    Text("-")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                }
                Spacer()
            }
            Button {
                viewModel.count = 0
            } label: {
                Text("Reset")
                    .font(.title2)
                    .foregroundColor(.red)
            }
        }
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView()
    }
}
