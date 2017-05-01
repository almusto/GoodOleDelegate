//
//  SendViewController.swift
//  GoodOleDelegates
//
//  Created by Alessandro Musto on 2/18/17.
//  Copyright © 2017 Lmusto. All rights reserved.
//

import UIKit

protocol UpdateLabelTextDelegate: class {
    func updateLabelText(withText text: String)
}

class SendViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var sendButton: UIButton!

    weak var delegate: UpdateLabelTextDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func sendTextToReceiver(_ sender: UIButton) {
        delegate?.updateLabelText(withText: textField.text!)
        dismiss(animated: true, completion: nil)
    }

}
