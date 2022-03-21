//
//  JumpingRopesLandingBottomTableViewCell.swift
//  Fitoday
//
//  Created by Apple on 17/03/2022.
//

import UIKit

class JumpingRopesLandingBottomTableViewCell: UITableViewCell {
    
    var onJumpModeButtonClicked: ((jumpMode)->Void)?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func onFreeJumpModeButtonClick(_ sender: UIButton) {
        self.onJumpModeButtonClicked?(jumpMode.freeJumpMode)
    }
    
    @IBAction func onTimerModeButtonClick(_ sender: UIButton) {
        self.onJumpModeButtonClicked?(jumpMode.timerMode)
    }
    
    @IBAction func onCountdownModeButtonClick(_ sender: UIButton) {
        self.onJumpModeButtonClicked?(jumpMode.countdownMode)
    }
    
    @IBAction func onTargetModeButtonClick(_ sender: UIButton) {
        self.onJumpModeButtonClicked?(jumpMode.targetMode)
    }
}
