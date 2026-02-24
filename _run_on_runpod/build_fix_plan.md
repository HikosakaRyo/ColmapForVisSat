# RunPod (Ubuntu 22.04 + CUDA 11.8) ビルド修正プラン

## 目的
- `runpod/pytorch:2.1.0-py3.10-cuda11.8.0-devel-ubuntu22.04` 上で COLMAP をビルド成功させる。
- 変更は最小限にとどめる。
- GUI/Qt は可能なら無効化した CLI ビルドを成立させる。

## 作業ステップ
1. 現状の CMake 構成を確認し、Ubuntu 22.04 + CUDA 11.8 での失敗要因を特定する。
2. CMake に最小限のオプション分岐を追加し、Qt/GUI 依存を無効化可能にする（CLI ビルド対応）。
3. 必要であれば CUDA 周りのビルド互換性（アーキ指定・フラグ）を最小変更で調整する。
4. RunPod 環境向け依存インストールスクリプト `_run_on_runpod/install_build_tools_for_colmap.sh` を作成する。
5. `cmake` configure と `cmake --build` で実ビルド確認する。
6. 変更をコミットし、PR メッセージを作成する。

## 成果物
- 最小差分の CMake 修正
- `_run_on_runpod/install_build_tools_for_colmap.sh`
- 検証ログ（configure/build 成功）

## レビュー結果
- 上記プランに沿って実施可能と判断し、作業を実施した。
