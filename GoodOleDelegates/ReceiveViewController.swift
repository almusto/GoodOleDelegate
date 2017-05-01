//
//  ReceiveViewController.swift
//  GoodOleDelegates
//
//  Created by Alessandro Musto on 2/18/17.
//  Copyright © 2017 Lmusto. All rights reserved.
//

import UIKit

class ReceiveViewController: UIViewController {

    @IBOutlet weak var receiveLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSender" {
            let dest = segue.destination as! SendViewController
            dest.delegate = self
        }
    }

}

//Mark:- UpdateLabel Delegate

extension ReceiveViewController: UpdateLabelTextDelegate {

    func updateLabelText(withText text: String) {
        receiveLabel.text = text
    }

}

