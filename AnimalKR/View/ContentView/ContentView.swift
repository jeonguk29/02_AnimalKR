//
//  ContentView.swift
//  AnimalKR
//
//  Created by Jacob Ko on 2022/12/23.
//

import SwiftUI

struct ContentView: View {
	
	// properry
	@ObservedObject var vm: AnimalViewModel
	
    var body: some View {
		NavigationView {
			List {
				// 1. Cover Image - hero Image
				CoverImageView(vm: vm)
					.frame(height: CGFloat.screenHeight * 0.4) // 전체 화면에서 40%만 사용
					.listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)) // 모두 0으로 줘서 그림이 꽉 차도록 
				
				
				// Animal List
				ForEach(vm.animals) { animal in
					NavigationLink {
						// destination
						DetailView(animal: animal)
					} label: {
						// list label
						AnimalListView(animal: animal)
							.listRowInsets(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 0))
					}
				
				}  //: LOOP
				// Credit
				CreditView()
					.hCenter()
					
			}  //: LIST
			.listStyle(.plain)
			.navigationBarTitle("멸종위기 동물들")
		} //: NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		ContentView(vm: AnimalViewModel())
    }
}
