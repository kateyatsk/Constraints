//
//  ViewController.swift
//  Constraints
//
//  Created by Екатерина Яцкевич on 16.03.25.
//

import UIKit

class ViewController: UIViewController {

    lazy var profilePicture: UIImageView = {
        $0.layer.cornerRadius = 32
        $0.image = .girl
        $0.clipsToBounds = true
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIImageView())
    
    lazy var surname: UILabel = {
        $0.text = "Имя Фамилия"
        $0.font = .systemFont(ofSize: 16, weight: .heavy)
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    lazy var backgroundView: UIView = {
        $0.layer.cornerRadius = 30
        $0.backgroundColor = .grayBackground
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIView())
    
    lazy var birdPicture: UIImageView = {
        $0.layer.cornerRadius = 30
        $0.image = .bird
        $0.clipsToBounds = true
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIImageView())
    
    lazy var photoNameLabel: UILabel = {
        $0.text = "Название фото"
        $0.font = .systemFont(ofSize: 24, weight: .heavy)
        $0.textColor = .white
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    lazy var titleLabel: UILabel = {
        $0.text = "Заголовок"
        $0.font = .systemFont(ofSize: 20, weight: .heavy)
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    lazy var descriptionLabel: UILabel = {
        $0.text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore"
        $0.font = .systemFont(ofSize: 16, weight: .regular)
        $0.numberOfLines = 0
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    lazy var nextButton: UIButton = {
        $0.setTitle("next", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 16, weight: .regular)
        $0.backgroundColor = .greenButton
        $0.layer.cornerRadius = 20
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIButton())
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubviews(profilePicture, surname, backgroundView)
        backgroundView.addSubviews(
            birdPicture,
            photoNameLabel,
            titleLabel,
            descriptionLabel,
            nextButton
        )
        setupConstraints()
    }

    private func setupConstraints() {
    
        NSLayoutConstraint.activate([
            profilePicture.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 32),
            profilePicture.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 44),
            profilePicture.widthAnchor.constraint(equalToConstant: 64),
            profilePicture.heightAnchor.constraint(equalToConstant: 64),
            
            surname.leadingAnchor.constraint(equalTo: profilePicture.trailingAnchor, constant: 12),
            surname.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12),
            surname.topAnchor.constraint(equalTo: profilePicture.topAnchor, constant: 22),
            
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12),
            backgroundView.topAnchor.constraint(equalTo: profilePicture.bottomAnchor, constant: 32),
            
            birdPicture.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor, constant: 20),
            birdPicture.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor, constant: -20),
            birdPicture.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 20),
            birdPicture.heightAnchor.constraint(equalToConstant: 239),
            
            photoNameLabel.leadingAnchor.constraint(equalTo: birdPicture.leadingAnchor, constant: 20),
            photoNameLabel.bottomAnchor.constraint(equalTo: birdPicture.bottomAnchor, constant: -40),
            photoNameLabel.heightAnchor.constraint(equalToConstant: 24),
            
            titleLabel.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor, constant: 36),
            titleLabel.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor, constant: -36),
            titleLabel.topAnchor.constraint(equalTo: birdPicture.bottomAnchor, constant: 21),
            titleLabel.heightAnchor.constraint(equalToConstant: 24),
            
            descriptionLabel.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor, constant: 20),
            descriptionLabel.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor, constant: -20),
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 12),
            descriptionLabel.heightAnchor.constraint(equalToConstant: 60),
            
            nextButton.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor, constant: 20),
            nextButton.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor, constant: -20),
            nextButton.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 26),
            nextButton.heightAnchor.constraint(equalToConstant: 50),
            nextButton.bottomAnchor.constraint(equalTo: backgroundView.bottomAnchor, constant: -40)
            
        ])
    }

    
    
}

extension UIView {
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach({addSubview($0)})
    }
}
