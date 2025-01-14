//
//  LocationInputViewController.swift
//  WeatherApp
//
//  Created by Muhammad Nurjaman on 11/10/24.
//

import Alamofire
import UIKit


class LocationInputVC: UIViewController {
    var userModel: UserModel?
    var provinceModel: ProvinceModel?
    var cityModel: CityModel?
    var gradientBackgroundView: CustomGradientView!
    
    
    
    
    @IBOutlet weak var headinglabel: UILabel!
    @IBOutlet weak var nameinput: UITextField!
    @IBOutlet weak var submitbutton: UIButton!
    @IBOutlet weak var warninglabel: UILabel!
    
    let gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
        //        submitbutton.isEnabled = false // Disable submit button saat pertama kali
        //        warninglabel.isHidden = true   // Sembunyikan warning label saat pertama kali
        //        nameinput.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        
    }
    
    private func configureUI(){
        setupGradientBackground()
        setupLabels()
        setupButton()
        submitbutton.isEnabled = false
        warninglabel.isHidden = true
    }
    
    //MARK: - Setup UI
    private func setupGradientBackground() {
        gradientBackgroundView = CustomGradientView(frame: self.view.bounds)
        self.view.insertSubview(gradientBackgroundView, at: 0)
    }
    private func setupLabels(){
        headinglabel.text = "Welcome to Weather APP"
        headinglabel.textColor = .white
        headinglabel.font = UIFont.systemFont(ofSize: 25)
    }
    private func setupButton(){
        submitbutton.backgroundColor = .white
        
    }
    @objc private func textFieldDidChange(_ textField: UITextField) {
        if let text = textField.text, !text.isEmpty {
            // Jika textfield diisi, enable submit button dan sembunyikan warning label
            submitbutton.isEnabled = true
            warninglabel.isHidden = true
        } else {
            // Jika textfield kosong, disable submit button dan tampilkan warning label
            submitbutton.isEnabled = false
            submitbutton.isHidden = false
            warninglabel.text = "Please enter your name"
            warninglabel.textColor = .red
        }
    }
    
}

