# PythonCodeCrypt

## 目的
Pythonスクリプトを再頒布可能で解析不能な形式に変換する。

## サンプルの実行手順
1. 環境構築
   ```
   pip install -r requirements.txt
   ```

2. Pythonコード難読化 & 実行ファイル生成
   ```
   pyarmor pack -e " --onefile" ./sampleCode/HelloTensorflow.py
   ```

3. 生成された実行ファイルをテスト実行
   ```
    .\sampleCode\dist\HelloTensorflow.exe

    2019-11-18 11:19:07.333501: I tensorflow/stream_executor/platform/default/dso_loader.cc:42] Successfully opened dynamic library nvcuda.dll
    2019-11-18 11:19:07.358900: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1640] Found device 0 with properties:
    name: GeForce GTX 1080 Ti major: 6 minor: 1 memoryClockRate(GHz): 1.582
    pciBusID: 0000:01:00.0
    2019-11-18 11:19:07.366332: I tensorflow/stream_executor/platform/default/dlopen_checker_stub.cc:25] GPU libraries are statically linked, skip dlopen check.
    2019-11-18 11:19:07.370676: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1763] Adding visible gpu devices: 0
    2019-11-18 11:19:07.373689: I tensorflow/core/platform/cpu_feature_guard.cc:142] Your CPU supports instructions that this TensorFlow binary was not compiled to use: AVX2
    2019-11-18 11:19:07.381473: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1640] Found device 0 with properties:
    name: GeForce GTX 1080 Ti major: 6 minor: 1 memoryClockRate(GHz): 1.582
    pciBusID: 0000:01:00.0
    2019-11-18 11:19:07.396244: I tensorflow/stream_executor/platform/default/dlopen_checker_stub.cc:25] GPU libraries are statically linked, skip dlopen check.
    2019-11-18 11:19:07.409094: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1763] Adding visible gpu devices: 0
    2019-11-18 11:19:07.894707: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1181] Device interconnect StreamExecutor with strength 1 edge matrix:
    2019-11-18 11:19:07.899630: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1187]      0
    2019-11-18 11:19:07.901785: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1200] 0:   N
    2019-11-18 11:19:07.905176: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1326] Created TensorFlow device (/job:localhost/replica:0/task:0/device:GPU:0 with 8788 MB memory) -> physical GPU (device: 0, name: GeForce GTX 1080 Ti, pci bus id: 0000:01:00.0, compute capability: 6.1)
    b'Hello, Tensorflow!'
   ```