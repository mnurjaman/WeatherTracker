//
//  CustomUIView.swift
//  WeatherApp
//
//  Created by Muhammad Nurjaman on 11/10/24.
//



import UIKit
class CustomGradientView: UIView {
    
    //MARK: - Properties
    private let gradientLayer = CAGradientLayer()

    //MARK: Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupGradient()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupGradient()
    }
    
    //MARK: - Lifecycle
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = self.bounds
    }
    
    //MARK: - Private Methods
    private func setupGradient() {
        let color1 = UIColor(red: 89/255, green: 54/255, blue: 180/255, alpha: 1.0) // #5936B4
        let color2 = UIColor(red: 54/255, green: 42/255, blue: 132/255, alpha: 1.0) // #362A84
        
        gradientLayer.colors = [color1.cgColor, color2.cgColor]
        gradientLayer.locations = [0.1, 1.0] // 10% dan 100%
        gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
        layer.insertSublayer(gradientLayer, at: 0)
    }
    
    
}


