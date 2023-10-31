//
//  AnimalListView.swift
//  AnimalKR
//
//  Created by Jacob Ko on 2022/12/24.
//

import SwiftUI

struct AnimalListView: View {
	
	// property
	let animal: Animal
	
    var body: some View {
		HStack (spacing: 20) {
			Image(animal.image)
				.resizable()
				.scaledToFill()
				.frame(width: 90, height: 90)
				.clipShape(RoundedRectangle(cornerRadius: 12)) // 약간 둥근 사각형 만큼 이미지 자르기
			
			VStack (spacing: 10) {
				Text(animal.name)
					.hLeading() // 앞쪽으로 붙게
					.font(.title)
					.foregroundColor(.accentColor)
				
				Text(animal.headline)
					.font(.footnote)
					.lineLimit(2) // 두줄 넘어가면 ...
					.padding(.trailing, 10)
			} //: VSTACK
		}  //: HSTACK
    }
}

struct AnimalListView_Previews: PreviewProvider {
    static var previews: some View {
		AnimalListView(animal: Animal.sampleAnimal)
    }
}
