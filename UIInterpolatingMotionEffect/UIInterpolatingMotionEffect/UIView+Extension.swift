import UIKit

extension UIView {
    func motionEffect(intensity: Int) {
        // Set vertical effect
        let verticalMotionEffect = UIInterpolatingMotionEffect(keyPath: "center.y", type: .tiltAlongVerticalAxis)
        
        verticalMotionEffect.minimumRelativeValue = -intensity
        verticalMotionEffect.maximumRelativeValue = intensity
        
        // Set horizontal effect
        let horizontalMotionEffect = UIInterpolatingMotionEffect(keyPath: "center.x", type: .tiltAlongHorizontalAxis)
        
        horizontalMotionEffect.minimumRelativeValue = -intensity
        horizontalMotionEffect.maximumRelativeValue = intensity
        
        // Create group to combine both
        let group = UIMotionEffectGroup()
        group.motionEffects = [horizontalMotionEffect, verticalMotionEffect]
        addMotionEffect(group)
    }
}
