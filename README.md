# AOT Series Frameworks in PyTorch
<p>
  <img src="https://img.shields.io/badge/NeurIPS-2021-7B68EE"/>
  <img src="https://img.shields.io/badge/NeurIPS-2022%20Spotlight%20%E2%AD%90-FFB347"/>
  <img src="https://img.shields.io/badge/IJCAI-2023-3CB371"/>
  <img src="https://img.shields.io/badge/IEEE%20TPAMI-2024-E07B54"/>
  <img src="https://img.shields.io/badge/%F0%9F%8F%86%20Challenge%20Wins-6-gold"/>
</p>

<p>
  <a href="https://paperswithcode.com/sota/semi-supervised-video-object-segmentation-on-15?p=decoupling-features-in-hierarchical">
    <img src="https://img.shields.io/badge/SOTA-Semi--Supervised%20VOS%20(DAVIS)-brightgreen"/>
  </a>
  <a href="https://paperswithcode.com/sota/video-object-segmentation-on-youtube-vos?p=associating-objects-with-scalable">
    <img src="https://img.shields.io/badge/SOTA-YouTube--VOS-blue"/>
  </a>
  <a href="https://paperswithcode.com/sota/semi-supervised-video-object-segmentation-on-18?p=associating-objects-with-scalable">
    <img src="https://img.shields.io/badge/SOTA-DAVIS--2018-orange"/>
  </a>
  <a href="https://paperswithcode.com/sota/semi-supervised-video-object-segmentation-on-1?p=associating-objects-with-scalable">
    <img src="https://img.shields.io/badge/SOTA-DAVIS--2017-yellow"/>
  </a>
  <a href="https://paperswithcode.com/sota/visual-object-tracking-on-davis-2017?p=associating-objects-with-scalable">
    <img src="https://img.shields.io/badge/SOTA-Tracking%20DAVIS--2017-red"/>
  </a>
  <a href="https://paperswithcode.com/sota/visual-object-tracking-on-davis-2016?p=associating-objects-with-scalable">
    <img src="https://img.shields.io/badge/SOTA-Tracking%20DAVIS--2016-purple"/>
  </a>
</p>



## News
- `2024/03`: **AOST** - [AOST](https://arxiv.org/abs/2203.11442), the journal extension of AOT, has been accepted by **IEEE TPAMI 2024** — the field's highest-impact journal. AOST is the first scalable VOS framework supporting run-time speed-accuracy trade-offs, from real-time efficiency to SOTA performance.
- `2023/07`: **Pyramid/Panoptic AOT** - The code of PAOT has been released in the [paot](https://github.com/yoxu515/aot-benchmark/tree/paot) branch. We propose a benchmark [**VIPOSeg**](https://github.com/yoxu515/VIPOSeg-Benchmark) for panoptic VOS, and PAOT is designed to tackle the challenges in panoptic VOS achieving SOTA performance. PAOT consists of a multi-scale LSTT architecture (same as MS-AOT in VOT2022) and panoptic ID banks for thing and stuff. See the [paper](https://arxiv.org/abs/2305.04470) for details. Published at **IJCAI 2023**.
- `2023/07`: **WINNER** - DeAOT-based Tracker ranked **1st** in the [**VOTS 2023**](https://www.votchallenge.net/vots2023/) challenge at **ICCV 2023** ([leaderboard](https://eu.aihub.ml/competitions/201#results)). Our [DMAOT](https://eu.aihub.ml/my/competition/submission/1139/detailed_results/) improves DeAOT by storing object-wise long-term memories instead of frame-wise long-term memories, eliminating memory growth in long sequences and improving multi-object handling.
- `2023/06`: **WINNER** - DeAOT-based Tracker ranked **1st** in **two tracks** of the [**EPIC-Kitchens**](https://epic-kitchens.github.io/2023) challenges at **CVPR 2023** ([leaderboard](http://epic-kitchens.github.io/2023)). MS-DeAOT wins Semi-Supervised Video Object Segmentation (segmentation-based tracking) [[Report](https://arxiv.org/pdf/2307.02010)] and TREK-150 Object Tracking (BBox-based tracking) [[Report](https://arxiv.org/pdf/2307.02508)].
- `2023/04`: **SAM-Track** - [Segment and Track Anything (SAM-Track)](https://github.com/z-x-yang/Segment-and-Track-Anything) merges [SAM](https://github.com/facebookresearch/segment-anything) with [DeAOT](https://github.com/yoxu515/aot-benchmark) for zero-shot segmentation and tracking of any object in video.
- `2022/10`: **WINNER** - AOT-based Tracker ranked **1st** in **four tracks** of the **VOT 2022** challenge at **ECCV 2022** ([presentation of results](https://data.votchallenge.net/vot2022/vot2022_st_rt.pdf)). MS-AOT wins VOT-STs2022 (short-term segmentation) and VOT-RTs2022 (real-time segmentation). Additionally, the bbox outputs of MS-AOT surpass the dedicated winners of both bbox tracks VOT-STb2022 and VOT-RTb2022 — highlighted in the [workshop presentation](https://data.votchallenge.net/vot2022/vot2022_st_rt.pdf).

## Impact

> **830+ citations** across the AOT series (verified via Google Scholar).

AOT/DeAOT has been adopted as core tracking infrastructure in published robotics research from **MIT CSAIL** and **Harvard SEAS**:

| Project | Institutions | Venue | Details |
|---------|-------------|-------|---------|
| [Follow Anything (FAn)](https://arxiv.org/pdf/2308.05737) | MIT CSAIL · Harvard SEAS · Project CETI | IEEE RA-L | Open-vocabulary real-time drone tracking system using DeAOT as the video object tracking backbone, deployed on a physical micro aerial vehicle (MAV). Authors include Daniela Rus (MIT CSAIL Director) and Robert J. Wood (Harvard SEAS). |

FAn uses DeAOT to track and follow arbitrary objects specified by text, image, or click — deployed in a live control loop on a drone at 6–20 fps on a commodity laptop GPU. This is not a benchmark citation; it is production use in a real robotic system.

---


## Papers

A four-year research lineage across NeurIPS, IJCAI, and IEEE TPAMI:

| Year | Paper | Venue | Branch |
|------|-------|-------|--------|
| 2021 | [**AOT**: Associating Objects with Transformers for Video Object Segmentation](https://arxiv.org/abs/2106.02638) [[OpenReview](https://openreview.net/forum?id=hl3v8io3ZYt)] | NeurIPS 2021 | `main` |
| 2022 | [**DeAOT**: Decoupling Features in Hierarchical Propagation for VOS](https://arxiv.org/pdf/2210.09782.pdf) [[OpenReview](https://openreview.net/forum?id=DgM7-7eMkq0)] | NeurIPS 2022 **Spotlight** ⭐ | `main` |
| 2023 | [**PAOT**: Video Object Segmentation in Panoptic Wild Scenes](https://arxiv.org/abs/2305.04470) | IJCAI 2023 | [`paot`](https://github.com/yoxu515/aot-benchmark/tree/paot) |
| 2024 | [**AOST**: Scalable Video Object Segmentation with Identification Mechanism](https://arxiv.org/abs/2203.11442) | IEEE TPAMI 2024 | [`paot`](https://github.com/yoxu515/aot-benchmark/tree/paot) |

> NeurIPS Spotlight is awarded to the top ~5% of accepted submissions. IEEE TPAMI is the field's highest-impact journal, with a multi-year, multi-round review standard.

## Competition Record

Six first-place finishes across three major venues:

| Year | Challenge | Track | Venue | Model | Report |
|------|-----------|-------|-------|-------|--------|
| 2023 | VOTS 2023 | Overall | ICCV 2023 | DMAOT | [Leaderboard](https://eu.aihub.ml/competitions/201#results) · [Submission](https://eu.aihub.ml/my/competition/submission/1139/detailed_results/) |
| 2023 | EPIC-Kitchens | Semi-Supervised VOS (segmentation-based tracking) | CVPR 2023 | MS-DeAOT | [Report](https://arxiv.org/pdf/2307.02010) |
| 2023 | EPIC-Kitchens | TREK-150 Object Tracking (BBox-based) | CVPR 2023 | MS-DeAOT | [Report](https://arxiv.org/pdf/2307.02508) |
| 2022 | VOT 2022 | Short-term segmentation (VOT-STs2022) | ECCV 2022 | MS-AOT | [Report](https://data.votchallenge.net/vot2022/vot2022_st_rt.pdf) |
| 2022 | VOT 2022 | Real-time segmentation (VOT-RTs2022) | ECCV 2022 | MS-AOT | [Report](https://data.votchallenge.net/vot2022/vot2022_st_rt.pdf) |
| 2022 | VOT 2022 | BBox tracks (STb + RTb) — surpassed dedicated bbox winners† | ECCV 2022 | MS-AOT + [AlphaRefine](https://github.com/MasterBin-IIAU/AlphaRefine) | [Report](https://data.votchallenge.net/vot2022/vot2022_st_rt.pdf) |

> †Bbox results were submitted after the competition deadline at the organizers' request and were highlighted in the official ECCV 2022 workshop presentation.

---


## Intro
A modular reference PyTorch implementation of the AOT series frameworks:
- **DeAOT**: Decoupling Features in Hierarchical Propagation for Video Object Segmentation (NeurIPS 2022, Spotlight) [[OpenReview](https://openreview.net/forum?id=DgM7-7eMkq0)][[PDF](https://arxiv.org/pdf/2210.09782.pdf)]
<img src="source/overview_deaot.png" width="90%"/>

- **AOT**: Associating Objects with Transformers for Video Object Segmentation (NeurIPS 2021, Score 8/8/7/8) [[OpenReview](https://openreview.net/forum?id=hl3v8io3ZYt)][[PDF](https://arxiv.org/abs/2106.02638)]
<img src="source/overview.png" width="90%"/>

For the `paot` branch: **PAOT** (IJCAI 2023) and **AOST** (IEEE TPAMI 2024) are available at [paot](https://github.com/yoxu515/aot-benchmark/tree/paot).

## Examples
Benchmark examples:

<img src="source/some_results.png" width="81%"/>

General examples (Messi and Kobe):

<img src="source/messi.gif" width="45%"/> <img src="source/kobe.gif" width="45%"/>

## Highlights
- **High performance:** up to **85.5%** ([R50-AOTL](MODEL_ZOO.md#youtube-vos-2018-val)) on YouTube-VOS 2018 and **82.1%** ([SwinB-AOTL](MODEL_ZOO.md#youtube-vos-2018-val)) on DAVIS-2017 Test-dev under standard settings (no test-time augmentation, no post-processing).
- **High efficiency:** up to **51fps** ([AOTT](MODEL_ZOO.md#davis-2017-test)) on DAVIS-2017 (480p) with **10 objects** and **41fps** on YouTube-VOS (1.3×480p). Multi-object processing is as efficient as single-object — no per-object overhead.
- **Multi-GPU training and inference**
- **Mixed precision training and inference**
- **Test-time augmentation:** multi-scale and flipping augmentations supported.

## Requirements
   * Python3
   * pytorch >= 1.7.0 and torchvision
   * opencv-python
   * Pillow
   * Pytorch Correlation. Recommend to install from [source](https://github.com/ClementPinard/Pytorch-Correlation-extension):
     ```bash
     git clone https://github.com/ClementPinard/Pytorch-Correlation-extension.git
     cd Pytorch-Correlation-extension
     pip install .
     cd ..
     ```

Optional:
   * scikit-image (required for the **Demo**)

## Model Zoo and Results
Pre-trained models, benchmark scores, and pre-computed results: [MODEL_ZOO.md](MODEL_ZOO.md).

## Demo - Panoptic Propagation
Propagates **40+** objects (semantic regions like sky, instances like person) within a single complex scenario and predicts video panoptic segmentation.

Download the [R50-AOTL checkpoint](https://drive.google.com/file/d/1qJDYn3Ibpquu4ffYoQmVjg1YCbr2JQep/view?usp=sharing) into [pretrain_models](pretrain_models), then run:
```bash
python tools/demo.py
```
Output resolution: 1.3×480p. Other AOT variants supported via `--model` and `--ckpt_path`.

Two scenarios from [VSPW](https://www.vspwdataset.com/home) are included in [datasets/Demo](datasets/Demo):

- `1001_3iEIq5HBY1s`: 44 objects. 1080P.
- `1007_YCTBBdbKSSg`: 43 objects. 1080P.

<img src="source/1001_3iEIq5HBY1s.gif" width="45%"/>  <img src="source/1007_YCTBBdbKSSg.gif" width="45%"/>

## Getting Started
0. Prepare a valid environment following the [requirements](#requirements).

1. Prepare datasets:

    Please follow the instructions below to prepare datasets in each folder.
    * **Static**

        [datasets/Static](datasets/Static): pre-training dataset with static images. Guidance in [AFB-URR](https://github.com/xmlyqing00/AFB-URR).
    * **YouTube-VOS**

        [datasets/YTB/2019](datasets/YTB/2019): version 2019, [download](https://drive.google.com/drive/folders/1XwjQ-eysmOb7JdmJAwfVOBZX-aMbHccC). `train` for training; `valid` (6fps) and `valid_all_frames` (30fps, optional) for evaluation.

        [datasets/YTB/2018](datasets/YTB/2018): version 2018, [download](https://drive.google.com/drive/folders/1L9JAl1BCtzomRJ34tKsU9tJUmF-ZMFOM). Only `valid` (6fps) and `valid_all_frames` (30fps, optional) required.

    * **DAVIS**

        [datasets/DAVIS](datasets/DAVIS): [TrainVal](https://data.vision.ee.ethz.ch/csergi/share/davis/DAVIS-2017-trainval-480p.zip) (480p) contains training and validation splits. [Test-Dev](https://data.vision.ee.ethz.ch/csergi/share/davis/DAVIS-2017-test-dev-480p.zip) (480p) contains the test split. Full-resolution also supported but not required.

2. Prepare ImageNet pre-trained encoders

    Download into [pretrain_models](pretrain_models):

    - [MobileNet-V2](https://download.pytorch.org/models/mobilenet_v2-b0353104.pth) (default encoder)
    - [MobileNet-V3](https://download.pytorch.org/models/mobilenet_v3_large-8738ca79.pth)
    - [ResNet-50](https://download.pytorch.org/models/resnet50-0676ba61.pth)
    - [ResNet-101](https://download.pytorch.org/models/resnet101-63fe2227.pth)
    - [ResNeSt-50](https://github.com/zhanghang1989/ResNeSt/releases/download/weights_step1/resnest50-528c19ca.pth)
    - [ResNeSt-101](https://github.com/zhanghang1989/ResNeSt/releases/download/weights_step1/resnest101-22405ba7.pth)
    - [Swin-Base](https://github.com/SwinTransformer/storage/releases/download/v1.0.0/swin_base_patch4_window7_224_22k.pth)

    > For encoders larger than ResNet-50, we recommend early stopping the main-training stage at 80k iterations (default: 100k) to avoid overfitting on seen YouTube-VOS classes.

3. Training and Evaluation

    The [example script](train_eval.sh) trains AOTT across 2 stages on 4 GPUs with AMP (`--amp`):
    - **Stage 1 (pre-training):** `Static` dataset
    - **Stage 2 (main training):** `YouTube-VOS 2019 train` + `DAVIS-2017 train` — generalizes across domains and frame rates (6, 24, 30fps)

    Training takes ~0.6 days per stage on 4× Tesla V100.

    Use `pre_ytb` instead of `pre_ytb_dav` in Stage 2 for better YouTube-VOS performance on unseen classes. Skipping Stage 1 (`ytb` start) drops performance ~1–2% absolutely.

    After training, results are packed into zip files for submission to:
    - [YouTube-VOS 2018 server](https://competitions.codalab.org/competitions/19544)
    - [YouTube-VOS 2019 server](https://competitions.codalab.org/competitions/20127)
    - [DAVIS toolkit](https://github.com/davisvideochallenge/davis-2017) (Val)
    - [DAVIS server](https://competitions.codalab.org/competitions/20516#learn_the_details) (Test-dev)

## Adding your own dataset
Coming soon.

## Troubleshooting
Coming soon.

## TODO
- [ ] Code documentation
- [ ] Adding your own dataset
- [ ] Results with test-time augmentations in Model Zoo
- [ ] Support gradient accumulation
- [x] Demo tool

## Citations
Please consider citing the related paper(s) in your publications if it helps your research.
```
@article{yang2021aost,
  title={Scalable Video Object Segmentation with Identification Mechanism},
  author={Yang, Zongxin and Miao, Jiaxu and Wei, Yunchao and Wang, Wenguan and Wang, Xiaohan and Yang, Yi},
  journal={TPAMI},
  year={2024}
}
@inproceedings{xu2023video,
  title={Video object segmentation in panoptic wild scenes},
  author={Xu, Yuanyou and Yang, Zongxin and Yang, Yi},
  booktitle={IJCAI},
  year={2023}
}
@inproceedings{yang2022deaot,
  title={Decoupling Features in Hierarchical Propagation for Video Object Segmentation},
  author={Yang, Zongxin and Yang, Yi},
  booktitle={Advances in Neural Information Processing Systems (NeurIPS)},
  year={2022}
}
@inproceedings{yang2021aot,
  title={Associating Objects with Transformers for Video Object Segmentation},
  author={Yang, Zongxin and Wei, Yunchao and Yang, Yi},
  booktitle={Advances in Neural Information Processing Systems (NeurIPS)},
  year={2021}
}
```

## License
This project is released under the BSD-3-Clause license. See [LICENSE](LICENSE) for additional details.