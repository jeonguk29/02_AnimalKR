//
//  DetailFact.swift
//  AnimalKR
//
//  Created by Jacob Ko on 2022/12/24.
//

import SwiftUI

struct DetailFact: View {
	
	// property
	let animal: Animal
	
    var body: some View {
		GroupBox {
			TabView {
				ForEach(animal.fact, id: \.self) { item in
					Text(item)
				}
			}  //: TAB
			.tabViewStyle(.page)
			.frame(minHeight: 148, idealHeight: 168, maxHeight: 180) // 이렇게 해주면 해상도가 각 폰마다 달라짐 
		} //:GROUPBOX
    }
}

struct DetailFact_Previews: PreviewProvider {
    static var previews: some View {
		DetailFact(animal: Animal.sampleAnimal)
    }
}
