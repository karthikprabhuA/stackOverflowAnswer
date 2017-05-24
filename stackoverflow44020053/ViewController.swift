//
//  ViewController.swift
//  stackoverflow44020053
//
//  Created by KarthikprabhuAlagu on 5/24/17.
//  Copyright © 2017 Kpalagu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var containerStackview: UIStackView!
  
  @IBOutlet weak var topViewWidthConstraint: NSLayoutConstraint!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    let orientation = UIApplication.shared.statusBarOrientation
    if(orientation == .portrait || orientation == .portraitUpsideDown)
    {
      handleOrientationForLandscape(isLandscape: false)
    }else if(orientation == .landscapeLeft || orientation == .landscapeRight)
    {
      handleOrientationForLandscape(isLandscape: true)
    }
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
    handleOrientationForLandscape(isLandscape: UIDevice.current.orientation.isLandscape)
  }
  func handleOrientationForLandscape(isLandscape: Bool)  {
    
    if isLandscape
    {
      containerStackview.axis = .horizontal
      topViewWidthConstraint.constant = 700
      
    }else
    {
      containerStackview.axis = .vertical
      topViewWidthConstraint.constant = UIScreen.main.bounds.width
    }
    
  }

}

