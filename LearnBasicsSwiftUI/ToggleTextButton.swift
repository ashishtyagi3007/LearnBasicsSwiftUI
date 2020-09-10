//
//  ToggleTextButton.swift
//  LearnBasicsSwiftUI
//
//  Created by Ashish Tyagi on 01/09/20.
//  Copyright © 2020 Ashish Tyagi. All rights reserved.
//

import SwiftUI

struct ToggleTextButton: View {
    
  @Binding var isOn: Bool
    
    var body: some View {
    Button(
      action: { self.isOn.toggle() },
      label: { Text(self.isOn ? "Hide" : "Show") }
    )
  }
}

#if DEBUG
struct ToggleTextButton_Previews : PreviewProvider {
    
  @State static var myCoolBool = false // Note: it must be static
    
    static var previews: some View {
    ToggleTextButton(isOn: $myCoolBool)
  }
}
#endif
