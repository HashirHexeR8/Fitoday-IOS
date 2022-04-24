//
//  SignUpViewController.swift
//  Fitoday
//
//  Created by Apple on 28/01/2022.
//

import UIKit

class SignUpViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    private var days: [String] = []
    private let months: [String] = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    private var years: [String] = []

    
    @IBOutlet private weak var monthPicker: UIPickerView!
    @IBOutlet private weak var dayPicker: UIPickerView!
    @IBOutlet private weak var yearPicker: UIPickerView!
    @IBOutlet private weak var createAccountButton: UIButton!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        createAccountButton.titleLabel?.font = UIFont(name: "Comfortaa-Bold", size: 16)
        
        scrollView.contentSize = CGSize(width: contentView.frame.width, height: contentView.frame.height)
        
        
        
        monthPicker.delegate = self
        monthPicker.dataSource = self
        dayPicker.delegate = self
        dayPicker.dataSource = self
        yearPicker.delegate = self
        yearPicker.dataSource = self
        
        dayPicker.selectRow(0, inComponent: 0, animated: false)
        monthPicker.selectRow(0, inComponent: 0, animated: false)
        yearPicker.selectRow(0, inComponent: 0, animated: false)
        
        let date = Date()
        
        let calendar = Calendar.current
        let currentYear = calendar.component(.year, from: date)
        let currentMonth = calendar.component(.month, from: date)
        
        let maxDays = getNumberOfDaysInMonth(year: currentYear, month: currentMonth)
        
        updateDaysList(maxNumberOfDays: maxDays)
        
        for i in 1900...currentYear {
            years.append(String(i))
        }
        
        // Do any additional setup after loading the view.
    }
    
    func getNumberOfDaysInMonth(year: Int, month: Int) -> Int {
        var dateComponenets = DateComponents()
        dateComponenets.year = year
        dateComponenets.month = month
        dateComponenets.day = 1
                
        let calendar = Calendar.current
        let date = calendar.date(from: dateComponenets)!

        let range = calendar.range(of: .day, in: .month, for: date)!
        let numDays = range.count
        
        return numDays
    }
    
    private func updateDaysList(maxNumberOfDays: Int) {
        days.removeAll()
        for i in 1...maxNumberOfDays {
            days.append(String(i))
        }
        dayPicker.reloadComponent(0)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == dayPicker {
            return days.count
        }
        else if pickerView == monthPicker {
            return months.count
        }
        else {
            return years.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let customView = SelectedRowCustomView()
        if pickerView == dayPicker {
            customView.label.text = days[row]
        }
        else if pickerView == monthPicker {
            customView.label.text = months[row]
        }
        else if pickerView == yearPicker {
            customView.label.text = years[row]
        }
        return customView
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let view = pickerView.view(forRow: row, forComponent: component) as! SelectedRowCustomView
        view.topIndicator.isHidden = false
        view.bottomIndicator.isHidden = false
        
        if pickerView == monthPicker {
            let selectedYearIndex = yearPicker.selectedRow(inComponent: 0)
            let year = Int(years[selectedYearIndex]) ?? 2000
            let maxDays = getNumberOfDaysInMonth(year: year, month: row + 1)
            updateDaysList(maxNumberOfDays: maxDays)
        }
        
        if pickerView == yearPicker {
            let selectedMonthIndex = monthPicker.selectedRow(inComponent: 0)
            let selectedMonth = selectedMonthIndex + 1
            let selectedYear = Int(years[row]) ?? 2000
            let maxDays = getNumberOfDaysInMonth(year: selectedYear, month: selectedMonth)
            updateDaysList(maxNumberOfDays: maxDays)
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return CGFloat(50)
    }
    
    @IBAction func onCreateAccountButtonClick(_ sender: UIButton) {
        let vc = DashboardViewController()
        vc.modalPresentationStyle = .fullScreen //or .overFullScreen for transparency
        self.present(vc, animated: true, completion: nil)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
