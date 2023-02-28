//
//  ViewController.swift
//  Shader
//
//  Created by Yuki Kuwashima on 2023/02/08.
//

import UIKit
import MetalKit

class ViewController: UIViewController {
    var renderer: Renderer = Renderer()
    override func viewDidLoad() {
        super.viewDidLoad()
        let metalView = MTKView(frame: view.bounds, device: ShaderCore.device)
        metalView.colorPixelFormat = ConstantParameters.pixelFormat
        metalView.delegate = renderer
        view.addSubview(metalView)
    }
}
