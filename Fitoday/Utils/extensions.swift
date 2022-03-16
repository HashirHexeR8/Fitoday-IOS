//
//  extensions.swift
//  Fitoday
//
//  Created by Apple on 16/01/2022.
//

import Foundation
import UIKit

extension UIScrollView {
    var currentPage:Int{
        return Int((self.contentOffset.x+(0.5*self.frame.size.width))/self.frame.width)
    }
}

@IBDesignable extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return layer.cornerRadius }
        set {
              layer.cornerRadius = newValue

              // If masksToBounds is true, subviews will be
              // clipped to the rounded corners.
              layer.masksToBounds = (newValue > 0)
        }
    }
}


@IBDesignable
class GradientView: UIView {
    @IBInspectable var firstColor: UIColor = UIColor.clear {
       didSet {
           updateView()
        }
     }
    
    @IBInspectable var secondColor: UIColor = UIColor.clear {
       didSet {
           updateView()
        }
     }
    
    @IBInspectable var isHorizontal: Bool = true {
       didSet {
          updateView()
       }
    }
    
    override class var layerClass: AnyClass {
        get {
            return CAGradientLayer.self
        }
    }
    
    func updateView() {
        let layer = self.layer as! CAGradientLayer
        layer.colors = [firstColor, secondColor].map{$0.cgColor}
        
        if (self.isHorizontal) {
            layer.startPoint = CGPoint(x: 0, y: 0.5)
            layer.endPoint = CGPoint (x: 1, y: 0.5)
         } else {
            layer.startPoint = CGPoint(x: 0.5, y: 0)
            layer.endPoint = CGPoint (x: 0.5, y: 1)
         }
    }
}

class FitodayTextField: UITextField {

    @IBInspectable var padding: CGFloat = 0

    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + padding, y: bounds.origin.y, width: bounds.width - padding * 2, height: bounds.height)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + padding, y: bounds.origin.y, width: bounds.width - padding * 2, height: bounds.height)
    }
}

let kUncheckedImage = UIImage(named: "CheckBoxUnselected")!
let kCheckedImage = UIImage(named: "CheckBoxSelected")!      // Could be replaced by a green checkmark !

@IBDesignable
class CheckBox: UIButton {
    @IBInspectable public var isChecked: Bool = false

    @IBInspectable public var image: UIImage?

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        image = kUncheckedImage
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    override func draw(_ rect: CGRect) {
//        if isChecked == true {
//                self.setImage(kCheckedImage, for: UIControl.State.normal)
//        } else {
//            self.setImage(kUncheckedImage, for: UIControl.State.normal)
//        }
//        image?.draw(in: rect)
    }

    override func awakeFromNib() {
        self.addTarget(self, action:#selector(buttonClicked(sender:)), for: UIControl.Event.touchUpInside)
    }

    @objc func buttonClicked(sender: UIButton) {
    
        if sender == self {
            isChecked = !isChecked
            if isChecked == true {
                    self.setImage(kCheckedImage, for: UIControl.State.normal)
            } else {
                self.setImage(kUncheckedImage, for: UIControl.State.normal)
            }
        }
    }

}
