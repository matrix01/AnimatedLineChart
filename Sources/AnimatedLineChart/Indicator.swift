import UIKit

class Indicator: CALayer {
    let outerCircle = CAShapeLayer()
    let whiteCirle = CAShapeLayer()
    let innerCircle = CAShapeLayer()
    
    override init() {
        super.init()
        
        setupView()
    }
    
    override init(layer: Any) {
        super.init(layer: layer)
    }
    
    private func setupView() {
        addSublayer(outerCircle)
        addSublayer(whiteCirle)
        addSublayer(innerCircle)
    }
    
    override func layoutSublayers() {
        super.layoutSublayers()
        
        let whiteRect = bounds.inset(by: UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1))
        let innerRect = bounds.inset(by: UIEdgeInsets(top: 4, left: 4, bottom: 4, right: 4))
        
        outerCircle.path = UIBezierPath(ovalIn: bounds).cgPath
        whiteCirle.path = UIBezierPath(ovalIn: whiteRect).cgPath
        innerCircle.path = UIBezierPath(ovalIn: innerRect).cgPath
        
        outerCircle.fillColor = UIColor.orange.cgColor
        whiteCirle.fillColor = UIColor.white.cgColor
        innerCircle.fillColor = UIColor.orange.cgColor
        
        let center = CGPoint(x: bounds.width/2, y: bounds.height/2)
        
        outerCircle.anchorPoint = self.anchorPoint
        whiteCirle.anchorPoint = self.anchorPoint
        innerCircle.anchorPoint = self.anchorPoint
        
        outerCircle.position = center
        whiteCirle.position = center
        innerCircle.position = center
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
