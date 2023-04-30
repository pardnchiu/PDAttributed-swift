```
let label = UILabel();


let paraph = NSMutableParagraphStyle();
paraph.alignment     = .left;
paraph.lineBreakMode = .byTruncatingTail;
paraph.lineSpacing   = 10;


let attributes: [NSAttributedString.Key:Any] = [
    .paragraphStyle : paraph,
    .kern           : 1.0,
    .font           : UIFont.systemFont(ofSize: 13, weight: .bold),
    .foregroundColor: UIColor.black,
];


label.attributedText = NSAttributedString(string: "測試文字", attributes: attributes);
```