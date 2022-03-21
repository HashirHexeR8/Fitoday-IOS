//
//  SelectedRowCustomView.swift
//  Fitoday
//
//  Created by Apple on 19/03/2022.
//

import UIKit

class SelectedRowCustomView: UIView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet var topIndicator: UIView!
    @IBOutlet var label: UILabel!
    @IBOutlet var bottomIndicator: UIView!

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("SelectedRowCustomView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }

}
