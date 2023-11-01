//
//  CountdownTableViewCell.swift
//  Final project
//
//  Created by Max Kiselyov on 10/31/23.
//

import UIKit

final class CountdownTableViewCell: UITableViewCell {
    // MARK: - Properties
    let emojiLabel = UILabel()
    let nameLabel = UILabel()
    let dateLabel = UILabel()
    let remainTimeLabel = UILabel()
    let remainTimeUnitsLabel = UILabel()
    
    private let remainTimeMaskView = UIView()
    private let completeimage = UIImage(systemName: "checkmark.circle.fill")
    private let completeMarker = UIView()
    
    private let nameContainer = UIStackView()
    private let nameAndEmojiContainer = UIStackView()
    private let remainContainer = UIStackView()
    
    // MARK: - init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupView()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    // MARK: - Methods
}

// MARK: - Setup View
private extension CountdownTableViewCell {
    func setupView() {
        addSubviews()
        setupLabels()
        setupVerticalContainer(for: nameContainer, primaryLabel: nameLabel, secondaryLabel: dateLabel)
        setupVerticalContainer(for: remainContainer, primaryLabel: remainTimeLabel, secondaryLabel: remainTimeUnitsLabel)
        setupHorizontalContainer()
        
        setupLayout()
    }
}
// MARK: - Settings
private extension CountdownTableViewCell {
    func addSubviews() {
        [nameContainer, remainContainer, nameAndEmojiContainer, remainTimeMaskView, remainContainer].forEach { subView in
            addSubview(subView)
        }
    }
    
    func setupLabels() {
        emojiLabel.font = .systemFont(ofSize: 38)
        [nameLabel, remainTimeLabel].forEach { label in
            label.font = .boldSystemFont(ofSize: 20)
        }
        
        [dateLabel, remainTimeUnitsLabel].forEach { label in
            label.font = .preferredFont(forTextStyle: .footnote)
        }
        
        [nameLabel, dateLabel, remainTimeLabel, remainTimeUnitsLabel].forEach { label in
            label.textColor = .white
        }
        // FIXME:
        remainTimeMaskView.backgroundColor = .darkGray.withAlphaComponent(0.3)
        remainTimeLabel.text = "11"
        remainTimeLabel.textAlignment = .center
        remainTimeUnitsLabel.text = "days left"
        remainTimeUnitsLabel.textAlignment = .center
        layer.cornerRadius = 60
    }
    
    func setupVerticalContainer(for container: UIStackView, primaryLabel: UILabel, secondaryLabel: UILabel) {
        container.axis = .vertical
        container.spacing = 6
        [primaryLabel, secondaryLabel].forEach { view in
            container.addArrangedSubview(view)
        }
    }
    
    func setupHorizontalContainer() {
        nameAndEmojiContainer.axis = .horizontal
        nameAndEmojiContainer.spacing = 10
        [emojiLabel, nameContainer].forEach { view in
            nameAndEmojiContainer.addArrangedSubview(view)
        }
    }
}
// MARK: - Layout
private extension CountdownTableViewCell {
    func setupLayout() {
        [nameAndEmojiContainer, remainTimeMaskView, remainContainer].forEach { view in
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            nameAndEmojiContainer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 13),
            nameAndEmojiContainer.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            remainTimeMaskView.topAnchor.constraint(equalTo: topAnchor),
            remainTimeMaskView.bottomAnchor.constraint(equalTo: bottomAnchor),
            remainTimeMaskView.trailingAnchor.constraint(equalTo: trailingAnchor),
            remainTimeMaskView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.25),
            
            remainContainer.centerXAnchor.constraint(equalTo: remainTimeMaskView.centerXAnchor),
            remainContainer.centerYAnchor.constraint(equalTo: remainTimeMaskView.centerYAnchor),
            
        ])
    }
}


