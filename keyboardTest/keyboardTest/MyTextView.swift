//
//  MyTextView.swift
//  Demo
//
//  Created by Milton Leung on 2017-07-11.
//  Copyright © 2017 Iftekhar. All rights reserved.
//

import UIKit

internal typealias Attachments = [String: UIImage]

class MyTextView: UITextView {
  fileprivate struct Constants {
    static let textViewVerticalMargins: CGFloat = 0
    static let textViewHorizontalMargins: CGFloat = 20
    static let characterSpacing: CGFloat = 0.5
    static let lineSpacing: CGFloat = 6
    static let lineFragmentPadding: CGFloat = 0
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    applyStyles()
  }

  func applyStyles() {
      font = UIFont.systemFont(ofSize: 18, weight: UIFontWeightRegular)
    textContainer.lineFragmentPadding = Constants.lineFragmentPadding
    textContainerInset = UIEdgeInsets(top: Constants.textViewVerticalMargins,
                                      left: Constants.textViewHorizontalMargins,
                                      bottom: Constants.textViewVerticalMargins,
                                      right: Constants.textViewHorizontalMargins)
    typingAttributes = textAttributes
  }

  var paragraphStyle: NSMutableParagraphStyle {
    let paragraphStyle = NSMutableParagraphStyle()
    paragraphStyle.lineSpacing = Constants.lineSpacing
    return paragraphStyle
  }

  var textAttributes: [String: Any] {
      return [
        NSFontAttributeName: UIFont.systemFont(ofSize: 18, weight: UIFontWeightRegular),
        NSParagraphStyleAttributeName: paragraphStyle,
        NSKernAttributeName: Constants.characterSpacing
      ]
  }
}
