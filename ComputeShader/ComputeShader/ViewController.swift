//
//  ViewController.swift
//  ComputeShader
//
//  Created by クワシマ・ユウキ on 2022/07/27.
//

import UIKit
import MetalKit

class ViewController: UIViewController {
    
    var renderer: Renderer?
    
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        renderer = Renderer(functionName: "count")
        let metalViewFrame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        let metalView = MTKView(frame: metalViewFrame, device: ShaderCore.device)
        metalView.colorPixelFormat = .bgra8Unorm
        metalView.framebufferOnly = false
        metalView.drawableSize = metalViewFrame.size
        metalView.delegate = renderer
        self.view.addSubview(metalView)
        self.view.sendSubviewToBack(metalView)
    }
    
    @IBAction func add() {
        renderer?.args[1] += 1.0
        label.text = String(Int(renderer!.args[1]))
    }
}
