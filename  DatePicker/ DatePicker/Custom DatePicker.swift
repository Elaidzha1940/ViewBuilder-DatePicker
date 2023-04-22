//  /*
//
//  Project: DatePicker
//  File: Custom DatePicker.swift
//  Created by: Elaidzha Shchukin
//  Date: 23.04.2023
//
//  */

import SwiftUI

struct Custom_DatePicker: View {
    
    @State var selectedDate = Date()
    @State var selectedDate1 = Date()
    
    var body: some View {
        
        
        HStack {
            Text("Дата и время")
                .font(.title3)
                .fontWeight(.medium)
                .padding(.trailing, 250)
                .padding()
        }
        
        HStack {
            DatePicker("День",
                       selection: $selectedDate,
                       displayedComponents: .date)
            .labelsHidden()
            .padding(20)
            .frame(width: 200)
            .background(
                RoundedRectangle(cornerRadius: 18)
                    .stroke()
            )
            Spacer()
            DatePicker("Время",
                       selection: $selectedDate1,
                       displayedComponents: .hourAndMinute)
            .labelsHidden()
            .labelsHidden()
            .padding(20)
            .frame(width: 200)
            .background(
                RoundedRectangle(cornerRadius: 13)
                    .stroke()
            )
        }
        .padding()
    }
}

struct Custom_DatePicker_Previews: PreviewProvider {
    static var previews: some View {
        Custom_DatePicker()
    }
}
