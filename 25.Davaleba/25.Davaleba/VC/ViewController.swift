//
//  ViewController.swift
//  25.Davaleba
//
//  Created by Data on 10.05.24.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - properties
    
    var progressValue: Float = 0.0
    var timer: Timer?
    
    
    lazy var loadingImageView: UIImageView = {
           let imageView = UIImageView(image: UIImage(named: "loadImage"))
           imageView.translatesAutoresizingMaskIntoConstraints = false
           return imageView
       }()
    
    private let stackForReview: UIStackView = {
        let harts = UIStackView()
        harts.axis = .horizontal
        harts.spacing = 13.3
        harts.translatesAutoresizingMaskIntoConstraints = false
        return harts
    }()
    
    private let songImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "imageOfSong")
        img.layer.cornerRadius = 20
        img.clipsToBounds = true
        img.contentMode = .scaleAspectFill
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    private let nameOfSong: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 7
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private let navigationBar: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 10/255, green: 9/255, blue: 30/255, alpha: 1.0)
        view.layer.cornerRadius = 40
        view.layer.shadowColor = UIColor(red: 142/255, green: 142/255, blue: 142/255, alpha: 0.3).cgColor
        view.layer.shadowOpacity = 20
        view.layer.shadowOffset = CGSize(width: 0, height: 2)
        view.layer.shadowRadius = 50
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let homeButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        button.setImage(UIImage(systemName: "house"), for: .normal)
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let favButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        button.setImage(UIImage(systemName: "heart"), for: .normal)
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let musicButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        button.setImage(UIImage(systemName: "music.quarternote.3"), for: .normal)
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let shuffleButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        button.setImage(UIImage(systemName: "shuffle"), for: .normal)
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let skipBackButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        button.setImage(UIImage(systemName: "backward.end"), for: .normal)
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let skipForwardButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        button.setImage(UIImage(systemName: "forward.end"), for: .normal)
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let repeatButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        button.setImage(UIImage(systemName: "repeat"), for: .normal)
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let playButton: UIButton = {
        let symbolConfiguration = UIImage.SymbolConfiguration(pointSize: 30)
        let button = UIButton()
        button.backgroundColor = UIColor(red: 58/255, green: 137/255, blue: 1.0, alpha: 1.0)
        button.setImage(UIImage(systemName: "play", withConfiguration: symbolConfiguration), for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 40
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let progressBar: UIProgressView = {
        let bar = UIProgressView(progressViewStyle: .default)
        bar.trackTintColor = UIColor(red: 0.949, green: 0.949, blue: 0.949, alpha: 1.0)
        bar.progressTintColor = UIColor(red: 0.227, green: 0.537, blue: 1.0, alpha: 1.0)
        bar.translatesAutoresizingMaskIntoConstraints = false
        bar.setProgress(0, animated: false)
        return bar
    }()
    
    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        addInView()
        addLayout()
        namesconfigure()
        actionOfPlayButton()
        revewConfigure()
        buttonsAction()
    }
    
    // MARK: - function
    private func addInView() {
        view.addSubview(stackForReview)
        
        view.addSubview(songImage)
        view.addSubview(nameOfSong)
        view.addSubview(navigationBar)
        navigationBar.addSubview(homeButton)
        navigationBar.addSubview(favButton)
        navigationBar.addSubview(musicButton)
        view.addSubview(shuffleButton)
        view.addSubview(skipBackButton)
        view.addSubview(skipForwardButton)
        view.addSubview(repeatButton)
        view.addSubview(playButton)
        view.addSubview(progressBar)
        
        view.addSubview(loadingImageView)
        loadingImageView.isHidden = true
    }
    
    private func addLayout() {
        NSLayoutConstraint.activate([
//            imagehHight!,
            stackForReview.topAnchor.constraint(equalTo: view.topAnchor, constant: 55),
            stackForReview.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackForReview.widthAnchor.constraint(equalToConstant: 161.7),
            stackForReview.heightAnchor.constraint(equalToConstant: 24),
            
            songImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 110),
            songImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -383),
            songImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35),
            songImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -36),
            
            nameOfSong.topAnchor.constraint(equalTo: songImage.bottomAnchor, constant: 34),
            nameOfSong.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -286),
            nameOfSong.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 65),
            nameOfSong.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -65),
            
            navigationBar.topAnchor.constraint(equalTo: nameOfSong.bottomAnchor, constant: 201),
            navigationBar.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 30),
            navigationBar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            navigationBar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            homeButton.topAnchor.constraint(equalTo: navigationBar.topAnchor, constant: 23),
            homeButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -38),
            homeButton.leadingAnchor.constraint(equalTo: navigationBar.leadingAnchor, constant: 37.52),
            homeButton.trailingAnchor.constraint(equalTo: navigationBar.trailingAnchor, constant: -276.04),
            
            favButton.topAnchor.constraint(equalTo: navigationBar.topAnchor, constant: 23),
            favButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -38),
            favButton.leadingAnchor.constraint(equalTo: navigationBar.leadingAnchor, constant: 276),
            favButton.trailingAnchor.constraint(equalTo: navigationBar.trailingAnchor, constant: -37.52),
            
            musicButton.topAnchor.constraint(equalTo: navigationBar.topAnchor, constant: 23),
            musicButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -38),
            musicButton.leadingAnchor.constraint(equalTo: navigationBar.leadingAnchor, constant: 154),
            musicButton.trailingAnchor.constraint(equalTo: navigationBar.trailingAnchor, constant: -161),
            
            shuffleButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 637),
            shuffleButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -151),
            shuffleButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 21),
            shuffleButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -329.41),
            
            skipBackButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 637),
            skipBackButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -151),
            skipBackButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 85.55),
            skipBackButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -264.87),
            
            skipForwardButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 637),
            skipForwardButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -151),
            skipForwardButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 264.87 ),
            skipForwardButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -85.55),
            
            repeatButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 637),
            repeatButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -151),
            repeatButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 330.41),
            repeatButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            playButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 623),
            playButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            playButton.widthAnchor.constraint(equalToConstant: 80),
            playButton.heightAnchor.constraint(equalToConstant: 80),
            
            progressBar.topAnchor.constraint(equalTo: nameOfSong.bottomAnchor, constant: 33),
            progressBar.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -251),
            progressBar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22),
            progressBar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22),
            
            loadingImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 350),
            loadingImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loadingImageView.widthAnchor.constraint(equalToConstant: 40),
            loadingImageView.heightAnchor.constraint(equalToConstant: 40),
        ])
        
    }
    
    private func smallPhotoAnimation() {
        UIView.animate(withDuration: 0.5) {
            self.songImage.transform = CGAffineTransform(scaleX: 0.7, y: 0.7)

        }
    }
    
    private func bigPhotoAnimation() {
        UIView.animate(withDuration: 0.5) {
            self.songImage.transform = .identity

        }
    }
    
    func buttonsAction() {
        let buttonsArray = [homeButton, favButton, musicButton]
        for button in buttonsArray {
            button.addTarget(self, action: #selector(selectButtonAct), for: .touchUpInside)
        }
    }
    
    private var randomButton: UIButton?
    
    @objc func selectButtonAct(_ sender: UIButton) {
        guard sender != randomButton else {
            return
        }
        
        randomButton?.transform = .identity
        randomButton?.tintColor = .white
        randomButton = sender
        
        UIView.animate(withDuration: 0.3) {
            sender.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
            sender.tintColor = UIColor(red: 0.227, green: 0.537, blue: 1.0, alpha: 1.0)
        }
    }
    
    
    private func namesconfigure() {
        let songName = UILabel()
        songName.text = "So Long, London"
        songName.textColor = .white
        songName.font = UIFont.systemFont(ofSize: 24)
        songName.textAlignment = .center
        
        let artistName = UILabel()
        artistName.text = "Taylor Swift"
        artistName.textColor = .gray
        artistName.font = UIFont.systemFont(ofSize: 18)
        artistName.textAlignment = .center
        
        nameOfSong.addArrangedSubview(songName)
        nameOfSong.addArrangedSubview(artistName)
    }
    
    private let heart1 = UIButton()
    private let heart2 = UIButton()
    private let heart3 = UIButton()
    private let heart4 = UIButton()
    private let heart5 = UIButton()
    private func revewConfigure() {
        heart1.tintColor = .gray
        heart1.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        heart1.clipsToBounds = true
        
        heart2.tintColor = .gray
        heart2.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        
        heart3.tintColor = .gray
        heart3.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        
        heart4.tintColor = .gray
        heart4.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        
        heart5.tintColor = .gray
        heart5.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        
        stackForReview.addArrangedSubview(heart1)
        stackForReview.addArrangedSubview(heart2)
        stackForReview.addArrangedSubview(heart3)
        stackForReview.addArrangedSubview(heart4)
        stackForReview.addArrangedSubview(heart5)
        
        heart1.addTarget(self, action: #selector(act1Button), for: .touchUpInside)
        heart2.addTarget(self, action: #selector(act2Button), for: .touchUpInside)
        heart3.addTarget(self, action: #selector(act3Button), for: .touchUpInside)
        heart4.addTarget(self, action: #selector(act4Button), for: .touchUpInside)
        heart5.addTarget(self, action: #selector(act5Button), for: .touchUpInside)
        
        
    }
    @objc func act1Button() {
        heart1.tintColor = .red
    }
    @objc func act2Button() {
        heart1.tintColor = .red
        heart2.tintColor = .red
    }
    @objc func act3Button() {
        heart1.tintColor = .red
        heart2.tintColor = .red
        heart3.tintColor = .red
    }
    @objc func act4Button() {
        heart1.tintColor = .red
        heart2.tintColor = .red
        heart3.tintColor = .red
        heart4.tintColor = .red
    }
    @objc func act5Button() {
        heart1.tintColor = .red
        heart2.tintColor = .red
        heart3.tintColor = .red
        heart4.tintColor = .red
        heart5.tintColor = .red
    }
    
    private func actionOfPlayButton() {
        playButton.addTarget(self, action: #selector(playButtonTapped), for: .touchUpInside)
        
    }
    
    var isPlayButton = true
    @objc func playButtonTapped() {
        
        if isPlayButton {
            bigPhotoAnimation()
            if timer == nil {
                timer = Timer.scheduledTimer(withTimeInterval: 0.20, repeats: true) { timer in
                    self.progressBar.setProgress(self.progressValue / 100, animated: true)
                    self.progressValue += 1
                    if self.progressValue > 100 {
                        timer.invalidate()
                    }
                }
            } else {
                timer?.invalidate()
                timer = nil
            }
            
            loadingImageView.isHidden = false
            UIView.animate(withDuration: 0.5, delay: 0, options: [.curveLinear], animations: {
                self.loadingImageView.transform = self.loadingImageView.transform.rotated(by: .pi)
            }) { _ in
                DispatchQueue.main.asyncAfter(deadline: .now()) {
                    self.loadingImageView.isHidden = true
                }
            }
            
            //cvlis ghilakis icons
            let symbolConfiguration = UIImage.SymbolConfiguration(pointSize: 30)
            playButton.setImage(UIImage(systemName: "pause.fill", withConfiguration: symbolConfiguration), for: .normal)
            isPlayButton = false
        } else {
            
            smallPhotoAnimation()
            if timer != nil {
                progressValue = progressBar.progress * 100
                timer?.invalidate()
                timer = nil
            }
            
            loadingImageView.layer.removeAllAnimations()
            loadingImageView.isHidden = true
            
            //cvlis ghilakis icons
            let symbolConfiguration = UIImage.SymbolConfiguration(pointSize: 30)
            playButton.setImage(UIImage(systemName: "play", withConfiguration: symbolConfiguration), for: .normal)
            isPlayButton = true
        }
    }
}


