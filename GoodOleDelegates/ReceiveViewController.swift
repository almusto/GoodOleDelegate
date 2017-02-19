//
//  ReceiveViewController.swift
//  GoodOleDelegates
//
//  Created by Alessandro Musto on 2/18/17.
//  Copyright © 2017 Lmusto. All rights reserved.
//

import UIKit

class ReceiveViewController : UIViewController, UpdateLabelTextDelegate{

  @IBOutlet weak var receiveLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  func updateLabelText(withText text: String) {
    receiveLabel.text = text
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "goToSender" {
      let dest = segue.destination as! SendViewController
      dest.delegate = self
    }
  }


}

