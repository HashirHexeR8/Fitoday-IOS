//
//  WeightManagementHeaderTableViewCell.swift
//  Fitoday
//
//  Created by Apple on 14/03/2022.
//

import UIKit
import Charts

class WeightManagementHeaderTableViewCell: UITableViewCell {

    @IBOutlet weak var chartView: LineChartView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        var lineChartDatalist = [ChartDataEntry]()
        let value = ChartDataEntry(x: 8, y: 8.2)
        lineChartDatalist.append(value)
        let value1 = ChartDataEntry(x: 8.3, y: 8.4)
        lineChartDatalist.append(value1)
        let value2 = ChartDataEntry(x: 8.6, y: 8.2)
        lineChartDatalist.append(value2)
        let value3 = ChartDataEntry(x: 8.9, y: 8.8)
        lineChartDatalist.append(value3)
        let value4 = ChartDataEntry(x: 9.2, y: 8.4)
        lineChartDatalist.append(value4)
        
        let line = LineChartDataSet(entries: lineChartDatalist, label: "Weight(kg)")
        let color = UIColor(hexString: "EF426F")
        line.colors = [color]
        line.circleColors = [color]
        line.circleHoleColor = color
        let data = LineChartData()
        data.append(line)
        
        chartView.data = data
        
        chartView.dragEnabled = false
        chartView.pinchZoomEnabled = false
        chartView.doubleTapToZoomEnabled = false
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
