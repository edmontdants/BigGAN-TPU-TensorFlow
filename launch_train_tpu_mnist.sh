#!/bin/bash

nohup pipenv run python main_tpu.py \
	--use-tpu \
	--model-dir gs://octavian-training2/gan/mnist/model \
	--data-dir gs://octavian-training2/gan/mnist/data \
	--result-dir ./results \
	--data-source mnist \
	--img-size 28 \
	--img-ch 1 \
	--num-labels 10 \
	--steps-per-loop 500 \
	--train-steps 1875 \
	--eval-steps 40 \
	--batch-size 32 \
	--ch 96 \
	--layers 3 \
	--epoch 10000 \
	--tag mnist \
	--tag run-$RANDOM \
	--disable-inception-score \
	$@ &