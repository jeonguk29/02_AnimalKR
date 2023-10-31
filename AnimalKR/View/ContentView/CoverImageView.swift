//
//  CoverImageView.swift
//  AnimalKR
//
//  Created by Jacob Ko on 2022/12/24.
//

import SwiftUI

struct CoverImageView: View {
	
	// property
	@ObservedObject var vm: AnimalViewModel
	
	var body: some View {
		TabView {
			ForEach(vm.coverImages) { cover in
				Image(cover.name)
					.resizable()
					.scaledToFill()
			} //: LOOP
		}  //: TAB
		.tabViewStyle(.page)
	} //: TAB
}


struct CoverImageView_Previews: PreviewProvider {
	static var previews: some View {
		CoverImageView(vm: AnimalViewModel())
			.previewLayout(.fixed(width: 400, height: 300))
	}
}
