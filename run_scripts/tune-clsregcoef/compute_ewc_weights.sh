#!/bin/bash
for reg2coef in 1; do
for clsregcoef in 0.01 0.1 1 10 100; do
python tools/impose_ewc-reg2coef-clsregcoef.py \
--cls2term-path saved_weights/20200912-ewcweights-compute_terms/ewc_cls2term-23200.pkl \
--reg2term-path saved_weights/20200912-ewcweights-compute_terms/ewc_reg2term-23200.pkl \
--clsregterm-path saved_weights/20200912-ewcweights-compute_terms/ewc_clsregterm-23200.pkl \
--reg2coef ${reg2coef} \
--clsregcoef ${clsregcoef} \
--output-path saved_weights/20200912-ewcweights-compute_terms/ewc_weights-23200-reg2coef${reg2coef}-clsregcoef${clsregcoef}.pkl
done
done