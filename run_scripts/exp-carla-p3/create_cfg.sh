#!/bin/bash
for i in {0..4}
do
python3 tools/create_config_files.py \
    --template-cfg-path configs/exp-carla-p3/finetuning_cv0.py \
    --save-path configs/exp-carla-p3/finetuning_cv$i.py \
    --key-pairs CARLA_infos_train0.pkl=CARLA_infos_train$i.pkl,CARLA_infos_val0.pkl=CARLA_infos_val$i.pkl

python3 tools/create_config_files.py \
    --template-cfg-path configs/exp-carla-p3/lwf_distloss_cv0.py \
    --save-path configs/exp-carla-p3/lwf_distloss_cv$i.py \
    --key-pairs CARLA_infos_train0.pkl=CARLA_infos_train$i.pkl,CARLA_infos_val0.pkl=CARLA_infos_val$i.pkl

python3 tools/create_config_files.py \
    --template-cfg-path configs/exp-carla-p3/jointtraining_cv0.py \
    --save-path configs/exp-carla-p3/jointtraining_cv$i.py \
    --key-pairs CARLA_infos_train0.pkl=CARLA_infos_train$i.pkl,CARLA_infos_val0.pkl=CARLA_infos_val$i.pkl

done

for i in {0..4}
do
python3 tools/create_config_files.py \
    --template-cfg-path configs/exp-carla-p3/finetuning_cv0_cyc.py \
    --save-path configs/exp-carla-p3/finetuning_cv${i}_cyc.py \
    --key-pairs CARLA_infos_train0.pkl=CARLA_infos_train$i.pkl,CARLA_infos_val0.pkl=CARLA_infos_val$i.pkl,IncDetExpCARLAP3-finetune-cv0-20000.tckpt=IncDetExpCARLAP3-finetune-cv$i-20000.tckpt

python3 tools/create_config_files.py \
    --template-cfg-path configs/exp-carla-p3/lwf_distloss_cv0_cyc.py \
    --save-path configs/exp-carla-p3/lwf_distloss_cv${i}_cyc.py \
    --key-pairs CARLA_infos_train0.pkl=CARLA_infos_train$i.pkl,CARLA_infos_val0.pkl=CARLA_infos_val$i.pkl,IncDetExpCARLAP3-lwf-cv0-20000.tckpt=IncDetExpCARLAP3-lwf-cv$i-20000.tckpt

python3 tools/create_config_files.py \
    --template-cfg-path configs/exp-carla-p3/jointtraining_cv0_cyc.py \
    --save-path configs/exp-carla-p3/jointtraining_cv${i}_cyc.py \
    --key-pairs CARLA_infos_train0.pkl=CARLA_infos_train$i.pkl,CARLA_infos_val0.pkl=CARLA_infos_val$i.pkl,IncDetExpCARLAP3-jointtrain-cv0-20000.tckpt=IncDetExpCARLAP3-jointtrain-cv$i-20000.tckpt
done