//
//  ViewController.swift
//  PDAttributed
//
//  Created by Pardn on 2023/5/1.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.

		let vw = UIScreen.main.bounds.size.width;

		let label = UILabel(frame: CGRect(x: (vw - 300) / 2, y: 100, width: 300, height: 100));
		label.backgroundColor = .gray;
		view.addSubview(label);

//		let style = NSMutableParagraphStyle();
//		style.alignment     = .center;
//		style.minimumLineHeight = 80
//
//		let attributes: [NSAttributedString.Key:Any] = [
//			.paragraphStyle 		: style,
//			.kern           		: 10,
//			.font           		: UIFont.systemFont(ofSize: 30, weight: .bold),
//			.foregroundColor		: UIColor.white,
//			.strikethroughStyle	: NSNumber(value: NSUnderlineStyle.double.rawValue),
//			.strikethroughColor	: UIColor.red,
//			.underlineStyle			: NSNumber(value: NSUnderlineStyle.single.rawValue),
//			.underlineColor			: UIColor.yellow,
//			.baselineOffset			: 30
//		];
//		label.attributedText = NSAttributedString(string: "測試文字", attributes: attributes);

		label
			.attr(txt: "測試文字", clr: .white, align: .center)
			.attr(size: 30, weight: .bold)
			.attr(strike: .double)
			.attr(strikeClr: .red)
			.attr(under: .single)
			.attr(underClr: .yellow)
			.attr(charSpacing: 10)
			.attr(minH: 80)
			.attr(offset: 30)
			.end();
	};
};

