//
//  PhotoviewerViewController.swift
//  App Chat
//
//  Created by Luyện Hà Luyện on 17/04/2023.
//

import UIKit
import SDWebImage

class PhotoviewerViewController: UIViewController {

    private let url: URL
    
    init(with url: URL) {
        self.url = url
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "photo"
        navigationItem.largeTitleDisplayMode = .never
        view.backgroundColor = .systemBackground
        view.addSubview(imageView)
        imageView.sd_setImage(with: self.url, completed: nil)
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        imageView.frame = view.bounds
    }

}
