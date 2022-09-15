//
//  IGFeedPostActionTableViewCell.swift
//  Instagram
//
//  Created by Evren Ustun on 23.07.2022.
//

import UIKit

protocol IGFeedPostActionTableViewCellDelegate: AnyObject {
    func didTapLikeButton()
    func didTapCommentButton()
    func didTapSendButton()
}

class IGFeedPostActionTableViewCell: UITableViewCell {

    weak var delegate: IGFeedPostActionTableViewCellDelegate?

    static let identifier = "IGFeedPostActionTableViewCell"

    private let likeButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "heart"), for: .normal)
        return button
    }()

    private let commentButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "message"), for: .normal)
        return button
    }()

    private let sendButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "paperplane"), for: .normal)
        return button
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(likeButton)
        contentView.addSubview(commentButton)
        contentView.addSubview(sendButton)

        likeButton.addTarget(self, action: #selector(didTapLikeButton), for: .touchUpInside)
        commentButton.addTarget(self, action: #selector(didTaCommentButton), for: .touchUpInside)
        sendButton.addTarget(self, action: #selector(didTapSendButton), for: .touchUpInside)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @objc private func didTapLikeButton() {
        delegate?.didTapLikeButton()
    }

    @objc private func didTaCommentButton() {
        delegate?.didTapCommentButton()
    }

    @objc private func didTapSendButton() {
        delegate?.didTapSendButton()
    }
    public func configure(with post: UserPost) {
        // configure the cell

    }

    override func layoutSubviews() {
        super.layoutSubviews()
        // like, comment, send
        let buttonSize = contentView.height - 10
        let buttons = [likeButton, commentButton, sendButton]

        for x in 0..<buttons.count {
            let button = buttons[x]
            button.frame = CGRect(x: (CGFloat(x) * buttonSize) + (10 * CGFloat(x + 1)), y: 5, width: buttonSize, height: buttonSize)
        }
    }

    override func prepareForReuse() {
        super.prepareForReuse()

    }
}
