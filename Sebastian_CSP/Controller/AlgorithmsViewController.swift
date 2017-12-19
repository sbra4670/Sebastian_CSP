//
//  AlgorithmsViewController.swift
//  Sebastian_CSP
//
//  Created by Bravo, Sebastian on 11/8/17.
//  Copyright © 2017 Bravo, Sebastian. All rights reserved.
//

import UIKit

class AlgorithmsViewController: UIViewController {
    @IBOutlet weak var AlgorithmText: UILabel!

    
    private func setupAlgorithm()-> Void
    {
        var AlgorithmSteps : [String] = []
        
        //definition to Algorithm and all steps
        let Algorithm :String = "These are the instructions to create a pect in Java using Eclipse and Github"
        let stepOne :String = "First, open Eclipse, and right click on the project explorer window. Select new -> Java Project, name the project whatever you wish."
        let stepTwo :String = "Second, open Github, and select 'file' in the upper area of your screen. Select 'new repository'."
        let stepThree :String = "Lastly and most importantly, name your repository THE EXACT SAME as your Java Project in Eclipse"
        
        AlgorithmSteps = [stepOne, stepTwo, stepThree]
        
        let attributesDictionary = [NSAttributedStringKey.font : AlgorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: Algorithm, attributes: attributesDictionary)
        
        for step in AlgorithmSteps
        {
            let bullet :String = "🖤"
            let formattedStep :String = "\n\(bullet) \(step)"
            let attributedStringStep: NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle], range:
                NSMakeRange(0,attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep.length)
        }
        AlgorithmText.attributedText = fullAttributedString
    }
    
    private func createParagraphStyle() -> NSParagraphStyle
    {
        let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent = 35
        
        return paragraphStyle
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

