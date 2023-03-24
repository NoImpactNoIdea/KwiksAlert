//
//  ViewController.swift
//  KwiksAlert
//
//  Created by 26388491 on 03/23/2023.
//  Copyright (c) 2023 26388491. All rights reserved.
//

import UIKit
import KwiksAlert

class ViewController: UIViewController {
    
    var kwiksAlert = KwiksAlert()
    
    lazy var testButton : UIButton = {
        
        let cbf = UIButton(type: .system)
        cbf.translatesAutoresizingMaskIntoConstraints = false
        cbf.setTitle("ALERT POPUP", for: UIControl.State.normal)
        cbf.titleLabel?.adjustsFontSizeToFitWidth = true
        cbf.titleLabel?.numberOfLines = 1
        cbf.titleLabel?.adjustsFontForContentSizeCategory = true
        cbf.titleLabel?.textColor = UIColor .black
        cbf.backgroundColor = .clear
        cbf.tintColor = UIColor .black
        cbf.backgroundColor = .orange
        cbf.addTarget(self, action: #selector(self.runPopup), for: .touchUpInside)
        
        return cbf
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        print("removing git ignore")
        self.view.addSubview(self.testButton)
        self.testButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.testButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.testButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        self.testButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
    }
    
    @objc func runPopup() {
        
//UpdateKwiks
//AgeRestriction
//SendingFailed
//PermissionNeeded
//UploadFailed
//DownloadFailed
//VerificationFailed
//VideoResolutionLow
//FileNotSupported
//VideoNotSupported
//UnknownError
//MaximumPostsReached
//AccountRestricted
//MaxTagReached
//LargeImage
//UserAccountNotFound
//LoginFailed
//AccessDenied
//SoundNotWorking
//EmailNotVerified
//EmailVerified
//VerifyPhoneNumber
//PhoneNumberVerified
//IncorrectPassword
//IncorrectUsername
//FailedTransaction
//CardNotSupported
//InsufficientBalanceHard
//InsufficientBalanceLight
//PaymentDeclined
//LoginToAccess
        
        self.kwiksAlert = KwiksAlert(presentingViewController: self, popupType: .LoginToAccess)
        self.kwiksAlert.engagePopup()
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

