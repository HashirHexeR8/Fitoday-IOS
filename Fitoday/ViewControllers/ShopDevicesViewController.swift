//
//  ShopDevicesViewController.swift
//  Fitoday
//
//  Created by Apple on 02/03/2022.
//

import UIKit

class ShopDevicesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    @IBOutlet weak var shopDevicesTableView: UITableView!
    @IBOutlet weak var connectedDevicesCollectionView: UICollectionView!

    
    private var deviceDataSource: [ShopDeciceItemInfoDTO] = []
    
    let cellIdentifier = "ShopDeviceTableViewCell"
    let connectedDeviceCellIdentifier = "ConnectedDeviceCollectionViewCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: cellIdentifier, bundle: nil)
        shopDevicesTableView?.register(nib, forCellReuseIdentifier: cellIdentifier)
        let connectedDeviceNib = UINib(nibName: connectedDeviceCellIdentifier, bundle: nil)
        connectedDevicesCollectionView?.register(connectedDeviceNib, forCellWithReuseIdentifier: connectedDeviceCellIdentifier)
        
        shopDevicesTableView?.delegate = self
        shopDevicesTableView?.dataSource = self
        
        connectedDevicesCollectionView?.delegate = self
        connectedDevicesCollectionView?.dataSource = self
        
        
        let smartWeight = ShopDeciceItemInfoDTO(itemName: "Fitody Smart Scale", itemDescription: "Full Body Composition Including Body Fat, BMI, Water Percentage, Muscle & Bone Mass", itemPrice: "$13.99", itemDiscount: "20% off", itemImageName: "WeightScaleIcon")
        let smartRope = ShopDeciceItemInfoDTO(itemName: "Fitody Smart Tape", itemDescription: "Optimize Your Fitness Performance With Precise Measuring & Tracking", itemPrice: "$13.99", itemDiscount: "20% off", itemImageName: "SmartJumpRopeIcon")
        let smartTape = ShopDeciceItemInfoDTO(itemName: "Fitody Smart Rope", itemDescription: "Optimize Your Fitness Performance With Precise Measuring & Tracking", itemPrice: "$13.99", itemDiscount: "20% off", itemImageName: "SmartTapeIcon")
        let smartBMI = ShopDeciceItemInfoDTO(itemName: "Fitody Smart BMI", itemDescription: "Optimize Your Fitness Performance With Precise Measuring & Tracking", itemPrice: "$13.99", itemDiscount: "20% off", itemImageName: "WeightScaleIcon")
        
        deviceDataSource.append(smartWeight)
        deviceDataSource.append(smartRope)
        deviceDataSource.append(smartTape)
        deviceDataSource.append(smartBMI)


        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return deviceDataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = shopDevicesTableView?.dequeueReusableCell(withIdentifier: cellIdentifier) as! ShopDeviceTableViewCell
        cell.selectionStyle = .none
        
        cell.initCell(itemInfo: deviceDataSource[indexPath.row])
        return cell
    }
        
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = connectedDevicesCollectionView?.dequeueReusableCell(withReuseIdentifier: connectedDeviceCellIdentifier, for: indexPath) as! ConnectedDeviceCollectionViewCell
            
        return cell
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
