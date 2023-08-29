//
//  SheetView2Controller.swift
//  Totality_Corp_Assignment
//
//  Created by Richa Joshi on 28/08/23.
//

import UIKit

class SheetView2Controller: UIViewController ,UISheetPresentationControllerDelegate{
    var sheetPresentationController2 : UISheetPresentationController{
        presentationController as! UISheetPresentationController
       //This is my first time using UISheetPresentationController so some functionality were not the same . I borrowed a macbook from my friend
       //and it was having a older version of macOS so counldn't added cocoaPods and use libraries for the bottom card viewer.
       //Sorry for the inconvinience
    }
    @IBOutlet weak var nameView: UIView!
    @IBOutlet weak var nextLbl: UILabel!
    
    @IBOutlet weak var toRemovetxt3: UILabel!
    @IBOutlet weak var toRemovetxt1: UILabel!
    @IBOutlet weak var toRemovetxt2: UILabel!
    @IBOutlet weak var nextBtnView: UIView!
    @IBOutlet weak var nextBtn: UILabel!
    @IBOutlet weak var roundView3: UIView!
    @IBOutlet weak var roundView2: UIView!
    
    @IBOutlet weak var roundView1: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameView.isHidden = true
        //setting the corner radius
        roundView1.layer.cornerRadius = roundView1.frame.height/2
        roundView2.layer.cornerRadius = roundView2.frame.height/2
        roundView3.layer.cornerRadius = roundView3.frame.height/2
        nextBtnView.layer.cornerRadius = 20.0
        
        sheetPresentationController2.delegate = self
        sheetPresentationController2.selectedDetentIdentifier = .large
        sheetPresentationController2.prefersGrabberVisible = true
        sheetPresentationController2.detents =   [.medium(),.large()]
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextBtnTap(_ sender: Any) {
       //Reusing the same view controller for next state
        nameView.isHidden = false
        nextBtnView.backgroundColor = .black
        nextLbl.text = "Confirm"
      
        toRemovetxt1.text = ""
        toRemovetxt2.text = ""
        toRemovetxt3.text = ""
        roundView1.backgroundColor = .systemGray3
        roundView1.layer.cornerRadius = roundView1.frame.height/1.5
        roundView2.layer.cornerRadius = roundView2.frame.height/1.5
        roundView3.layer.cornerRadius = roundView3.frame.height/1.5
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
