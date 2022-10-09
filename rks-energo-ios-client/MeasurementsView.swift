//
//  MeasurementsView.swift
//  rks-energo-ios-client
//
//  Created by Igor Nikolaev on 9.10.2022.
//

import SwiftUI

struct Measurement: Identifiable {
    var id: Int
    let date: String
    let value: Int?
}

struct MeasurementsView: View {
    let measurements = [
        Measurement(id: 1, date: "09.10.2022", value: 3700),
        Measurement(id: 2, date: "09.09.2022", value: 3600),
        Measurement(id: 3, date: "09.08.2022", value: 3500),
        Measurement(id: 4, date: "09.07.2022", value: 3400),
        Measurement(id: 5, date: "09.06.2022", value: 3300),
        Measurement(id: 6, date: "09.05.2022", value: 3200),
        Measurement(id: 7, date: "09.04.2022", value: 3100)
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(measurements) { measurement in
                        self.measurementView(date: measurement.date, value: measurement.value)
                    }
                }
            }
            .navigationBarTitle("Показания")
        }
    }
    
    func measurementView(date: String, value: Int?) -> some View {
        VStack {
            HStack {
                VStack {
                    HStack {
                        Text("Дата").font(.footnote).foregroundColor(.secondary)
                        Spacer()
                    }
                    HStack {
                        Text(date)
                        Spacer()
                    }
                }
                Spacer()
                VStack {
                    HStack {
                        Spacer()
                        Text("Показания").font(.footnote).foregroundColor(.secondary)
                    }
                    HStack {
                        Spacer()
                        Text("\(value ?? 0) кВт")
                    }
                }
            }.padding(.vertical)
        }
    }
}

struct MeasurementsView_Previews: PreviewProvider {
    static var previews: some View {
        MeasurementsView()
    }
}
