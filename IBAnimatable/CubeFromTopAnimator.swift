//
//  Created by Jake Lin on 2/20/16.
//  Copyright © 2016 Jake Lin. All rights reserved.
//

import UIKit

/**
 Cube Animator, starts from top
 */
public class CubeFromTopAnimator: NSObject, UIViewControllerAnimatedTransitioning, AnimatedTransitioning {
  // MARK: - AnimatorProtocol
  public var transitionAnimationType = String(TransitionAnimationType.CubeFromTop)
  public var transitionDuration: Duration = .NaN
  public var reverseAnimationType: String? = String(TransitionAnimationType.CubeFromBottom)

  init(transitionDuration: Duration) {
    self.transitionDuration = transitionDuration
    super.init()
  }
  
  public func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval {
    return transitionDuration
  }
  
  public func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
    animateWithCATransition(transitionContext, type: CATransitionType.cube, subtype: kCATransitionFromTop)
  }
}
