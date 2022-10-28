# ComputeShader
![ComputeShader](ComputeShader.gif)

## 概要
MetalのCompute Shaderを用いてピクセルごとの色を並列に計算し、光が点滅するようなグラフィックのカウントアプリを低負荷で実装することができます。

## どう使われているか
- Apple製品のUIに関わる部分ほぼ全てに使われている

## 実装方法
1. ボタンを押したらラベルに表示される数字が1増えるようにする。
2. ShaderCoreクラスの中でMTLDevice, MTLLibrary, MTLCommandQueueを定義する。
3. Rendererクラスを作成し、NSObjectを継承しMTKViewDelegateに準拠させる。そのRendererクラスの中で描画処理のためのパイプラインを構築し、args[0]に経過時間、args[1]にカウントの数字が入るように実装する。
4. Shader.metalの中にcountという名前の関数を作成し、実際の描画処理を記述する。
5. ViewControllerクラスのviewDidLoad()の中でMTKViewのインスタンスとRendererのインスタンスを作成し、そのMTKViewのdelegateとしてRendererのインスタンスを渡す。この際、RendererのインスタンスはViewControllerクラスのプロパティなどメモリがすぐに解放されない場所で宣言する必要がある。