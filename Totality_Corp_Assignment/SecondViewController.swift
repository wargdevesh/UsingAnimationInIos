//
//  SecondViewController.swift
//  Totality_Corp_Assignment
//
//  Created by Richa Joshi on 26/08/23.
//

import UIKit

class SecondViewController: UIViewController {
    
   // lazy var sheetViewVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "vc3")
    
    @IBOutlet weak var greenDwldTrailingConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var PlayBtnPress: UIButton!
    
    @IBOutlet weak var playBtnView: UIView!
    
    @IBOutlet weak var titleImageView: UIView!
    @IBOutlet weak var downloadGreen: UIView!
    @IBOutlet weak var playView: UIView!
    @IBOutlet weak var dwnldingLbl: UILabel!
    
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var ReadMoreLbl: UILabel!
    @IBOutlet weak var DescriptionLbl: UILabel!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var crossBtn: UIButton!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var downloadLbl: UILabel!
    @IBOutlet weak var bluePlayView: UIView!
    override func viewDidLoad() {
            super.viewDidLoad()
        // Views position during screen loading.
        playBtnView.isHidden = true
        titleImageView.layer.cornerRadius  = CGFloat(8.0)
        downloadGreen.layer.cornerRadius = CGFloat(26.0)
        bluePlayView.layer.cornerRadius = CGFloat(26.0)
        titleImageView.center = CGPoint(x: titleImageView.center.x, y: titleImageView.center.y + 50)
        titleLbl.center = CGPoint(x: titleLbl.center.x, y: titleLbl.center.y + 50)
        crossBtn.center =  CGPoint(x: crossBtn.center.x, y: crossBtn.center.y + 50)
        bottomView.center = CGPoint(x: bottomView.center.x, y: bottomView.center.y - 50)
        UIView.animate(withDuration: 1, animations: {
            //View position to be set in the proper place using animation
            self.titleImageView.center = CGPoint(x: self.titleImageView.center.x, y: self.titleImageView.center.y-50)
            self.titleLbl.center = CGPoint(x: self.titleLbl.center.x, y: self.titleLbl.center.y-50)
            self.crossBtn.center = CGPoint(x: self.crossBtn.center.x, y: self.crossBtn.center.y-50)
            self.bottomView.center  = CGPoint(x: self.bottomView.center.x, y: self.bottomView.center.y+50)
        })
        DescriptionLbl.text = ""
        DescriptionLbl.textColor = UIColor(red: 157/255, green: 156/255, blue: 155/255, alpha: 0/255)
        ReadMoreLbl.text = ""
        ReadMoreLbl.textColor = UIColor(red: 200/255, green: 239/255, blue: 172/255, alpha: 0/255)
        stackView.isHidden = true
        stackView.center = CGPoint(x: stackView.center.x + 200, y: stackView.center.y+20 )
        UIView.animate(withDuration: 1.4, animations: {
            //View position to be set in the proper place using animation
            self.DescriptionLbl.text = "What is Lorem Ipsum?Lorem Ipsum is simply dummy text of the printing and typesetting"
            self.DescriptionLbl.textColor = UIColor(red: 157/255, green: 156/255, blue: 155/255, alpha: 255/255)
            self.ReadMoreLbl.text = "READ MORE"
            self.ReadMoreLbl.textColor = UIColor(red: 200/255, green: 239/255, blue: 172/255, alpha: 255/255)
            self.stackView.isHidden = false
            self.stackView.center = CGPoint(x: self.stackView.center.x-200, y: self.stackView.center.y-20)
        })
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dwnldBtnpress(_ sender: Any) {
        downloadLbl.text = "10 MB / 30 MB"
        downloadGreen.backgroundColor = .gray
        //downloadGreen.
        self.downloadGreen.isHidden = true
        playView.backgroundColor = .gray
        dwnldingLbl.text = "10 MB/ 30 MB"
       
        
        UIView.animate(withDuration: 2, animations: {
            self.greenDwldTrailingConstraint.constant = 20.0
            self.playView.backgroundColor = UIColor(red: 120/255, green: 197/255, blue: 42/255, alpha: 1.0)
            
        })
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.80, execute: {
            //adding a delay so that it looks like a new button is coming up,where we use the same button to do different things
            self.downloadGreen.center = CGPoint(x: self.downloadGreen.center.x, y: self.downloadGreen.center.y + 30)
            UIView.animate(withDuration: 0.2, animations: {
                self.downloadGreen.backgroundColor = UIColor(red: 66/255, green: 105/255, blue: 160/255, alpha: 255/255)
                self.downloadLbl.text = "Play"
                self.downloadGreen.isHidden = false
                self.downloadGreen.center = CGPoint(x: self.downloadGreen.center.x, y: self.downloadGreen.center.y-30)
            })
           // self.downloadGreen.backgroundColor = .blue
            //self.downloadLbl.text = "Play"
            //self.downloadGreen.isHidden = false
        })
        playBtnView.isHidden = false
    }
    
    @IBAction func playBtnClked(_ sender: Any) {
        let sheetViewVC = UIStoryboard(name: "Main", bundle: nil)
        let sheetPresetationController = sheetViewVC.instantiateViewController(withIdentifier: "vc3") as! SheetViewController
        self.present(sheetPresetationController, animated: true, completion: nil)
        }
    }
