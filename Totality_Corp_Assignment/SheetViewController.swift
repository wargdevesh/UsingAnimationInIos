//
//  ThirdViewController.swift
//  Totality_Corp_Assignment
//
//  Created by Richa Joshi on 27/08/23.
//

import UIKit

class SheetViewController: UIViewController ,UISheetPresentationControllerDelegate{
    
    @IBOutlet weak var roundView2: UIView!
    var sheetPresentationController : UISheetPresentationController{
        presentationController as! UISheetPresentationController
        //This is my first time using UISheetPresentationController so some functionality were not the same . I borrowed a macbook from my friend
        //and it was having a older version of macOS so counldn't added cocoaPods and use libraries for the bottom card viewer.
        //Sorry for the inconvinience
    }
    @IBOutlet weak var nextBtn: UIView!
    @IBOutlet weak var titleView: UIView!
    @IBOutlet weak var subtitleView1: UIView!
    @IBOutlet weak var subtitleView2: UIView!
    
    @IBOutlet weak var nextLbl: UILabel!
    @IBOutlet weak var subSubView2: UIView!
    @IBOutlet weak var subSubView1: UIView!
    @IBOutlet weak var roundView1: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //setting the corner radius
        nextBtn.layer.cornerRadius = 24.0
        titleView.layer.cornerRadius = 4.0
        subtitleView1.layer.cornerRadius = 4.0
        subtitleView2.layer.cornerRadius = 4.0
        subSubView1.layer.cornerRadius = 4.0
        subSubView2.layer.cornerRadius = 4.0
        roundView1.layer.cornerRadius =  roundView1.frame.height/2
        roundView2.layer.cornerRadius =   roundView2.frame.height/2
        // Views position during screen loading.
        titleView.backgroundColor = .white
        roundView1.center = CGPoint(x: roundView1.center.x + 100, y: roundView1.center.y)
        roundView2.center = CGPoint(x: roundView2.center.x + 100, y: roundView2.center.y)
        subtitleView1.center = CGPoint(x: subtitleView1.center.x + 100, y: subtitleView1.center.y)
        subtitleView2.center = CGPoint(x: subtitleView2.center.x + 100, y: subtitleView2.center.y)
        subSubView1.center = CGPoint(x: subSubView1.center.x + 100, y: subSubView1.center.y)
        subSubView2.center = CGPoint(x: subSubView2.center.x + 100, y: subSubView2.center.y)
        self.view.layoutIfNeeded()
        
        UIView.animate(withDuration: 1, animations: {
            //View position to be set in the proper place using animation
            self.titleView.backgroundColor = .systemGray3
            self.roundView1.center = CGPoint(x: self.roundView1.center.x - 100, y: self.roundView1.center.y)
            self.roundView2.center = CGPoint(x: self.roundView2.center.x - 100, y: self.roundView2.center.y)
            self.subtitleView1.center = CGPoint(x: self.subtitleView1.center.x - 100, y: self.subtitleView1.center.y)
            self.subtitleView2.center = CGPoint(x: self.subtitleView2.center.x - 100, y: self.subtitleView2.center.y)
            self.subSubView1.center = CGPoint(x: self.subSubView1.center.x - 100, y: self.subSubView1.center.y)
            self.subSubView2.center = CGPoint(x: self.subSubView2.center.x - 100, y: self.subSubView2.center.y)
            self.view.layoutIfNeeded()
        })
        
        sheetPresentationController.delegate = self
        sheetPresentationController.selectedDetentIdentifier = .medium
        sheetPresentationController.prefersGrabberVisible = true
        sheetPresentationController.prefersScrollingExpandsWhenScrolledToEdge = false
        sheetPresentationController.detents =   [.medium(),.large()]
       // sheetPresentationController.prefersGrabberVisible = false
        sheetPresentationController.accessibilityRespondsToUserInteraction =  true
        
       
        
        
        
    }
    
    
    @IBAction func nextBtnTap(_ sender: Any) {
        
           // self.nextLbl.text = "Working"
             let sheetViewVC2 = UIStoryboard(name: "Main", bundle: nil)
            let sheetPresetationController2 = sheetViewVC2.instantiateViewController(withIdentifier: "vc4") as! SheetView2Controller
            self.present(sheetPresetationController2, animated: true, completion: nil)
        
        
        
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
