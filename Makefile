install:
	pip install -U pip
	pip install -e .

test:
	CUDA_VISIBLE_DEVICES= python train_decoder.py --config_file configs/train_decoder_config.test.json

prior:
	python train_diffusion_prior.py --config_file configs/train_prior_config.json
