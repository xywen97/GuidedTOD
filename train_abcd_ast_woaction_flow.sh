# set cuda device

# 10p
echo "abcdASTWOActionFlow10P"
export CUDA_VISIBLE_DEVICES=0,1
python train.py --experiment_name abcdASTWOActionFlow10P \
 --model_name_or_path t5-base \
  --do_train \
  --do_eval \
  --do_predict \
  --num_train_epochs 100 \
  --train_file ./data/processed/train_AST_abcd_woaction_flow_10p.json \
  --validation_file ./data/processed/dev_AST_abcd_woaction_flow_10p.json \
  --test_file ./data/processed/test_AST_abcd_woaction_flow_10p.json \
  --text_column input \
  --summary_column target \
  --per_device_train_batch_size 16 \
  --per_device_eval_batch_size 16 \
  --predict_with_generate \
  --output_dir ./results/ \
  --save_strategy epoch \
  --source_prefix "Predict AST: " \
  --max_source_length 1024 \
  --max_target_length 256 \
  --val_max_target_length 256 \
  --learning_rate 5e-5 \
  --warmup_steps 500 \
  --use_ast_metrics \
  --use_fast_tokenizer False \
  --num_beams 4

# delete the saved model
rm -rf results/abcdASTWOActionFlow10P_input_target_t5-base/checkpoint-*


# export CUDA_VISIBLE_DEVICES=0,1
# echo "abcdASTWOActionFlow30P"
# python train.py --experiment_name abcdASTWOActionFlow30P \
#  --model_name_or_path t5-base \
#   --do_train \
#   --do_eval \
#   --do_predict \
#   --num_train_epochs 100 \
#   --train_file ./data/processed/train_AST_abcd_woaction_flow_30p.json \
#   --validation_file ./data/processed/dev_AST_abcd_woaction_flow_30p.json \
#   --test_file ./data/processed/test_AST_abcd_woaction_flow_30p.json \
#   --text_column input \
#   --summary_column target \
#   --per_device_train_batch_size 16 \
#   --per_device_eval_batch_size 16 \
#   --predict_with_generate \
#   --output_dir ./results/ \
#   --save_strategy epoch \
#   --source_prefix "Predict AST: " \
#   --max_source_length 1024 \
#   --max_target_length 256 \
#   --val_max_target_length 256 \
#   --learning_rate 5e-5 \
#   --warmup_steps 500 \
#   --use_ast_metrics \
#   --use_fast_tokenizer False \
#   --num_beams 4

# # delete the saved model
# rm -rf results/abcdASTWOActionFlow30P_input_target_t5-base/checkpoint-*

# half
# export CUDA_VISIBLE_DEVICES=0,1
# echo "abcdASTWOActionFlowHalf"
# python train.py --experiment_name abcdASTWOActionFlowHalf \
#  --model_name_or_path t5-base \
#   --do_train \
#   --do_predict \
#   --num_train_epochs 100 \
#   --train_file ./data/processed/train_AST_abcd_woaction_flow_half.json \
#   --validation_file ./data/processed/dev_AST_abcd_woaction_flow_half.json \
#   --test_file ./data/processed/test_AST_abcd_woaction_flow_half.json \
#   --text_column input \
#   --summary_column target \
#   --per_device_train_batch_size 32 \
#   --per_device_eval_batch_size 32 \
#   --predict_with_generate \
#   --output_dir ./results/ \
#   --save_strategy epoch \
#   --source_prefix "Predict AST: " \
#   --max_source_length 1024 \
#   --max_target_length 256 \
#   --val_max_target_length 256 \
#   --learning_rate 5e-5 \
#   --warmup_steps 500 \
#   --use_ast_metrics \
#   --use_fast_tokenizer False \
#   --num_beams 4

# # delete the saved model
# rm -rf results/abcdASTWOActionFlowHalf_input_target_t5-base/checkpoint-*

# all
# export CUDA_VISIBLE_DEVICES=0,1
# echo "abcdASTWOActionFlowAll"
# python train.py --experiment_name abcdASTWOActionFlowAll \
#  --model_name_or_path t5-base \
#   --do_train \
#   --do_eval \
#   --do_predict \
#   --num_train_epochs 100 \
#   --train_file ./data/processed/train_AST_abcd_woaction_flow_all.json \
#   --validation_file ./data/processed/dev_AST_abcd_woaction_flow_all.json \
#   --test_file ./data/processed/test_AST_abcd_woaction_flow_all.json \
#   --text_column input \
#   --summary_column target \
#   --per_device_train_batch_size 32 \
#   --per_device_eval_batch_size 32 \
#   --predict_with_generate \
#   --output_dir ./results/ \
#   --save_strategy epoch \
#   --source_prefix "Predict AST: " \
#   --max_source_length 1024 \
#   --max_target_length 256 \
#   --val_max_target_length 256 \
#   --learning_rate 5e-5 \
#   --warmup_steps 500 \
#   --use_ast_metrics \
#   --use_fast_tokenizer False \
#   --num_beams 4

# # delete the saved model
# rm -rf results/abcdASTWOActionFlowAll_input_target_t5-base/checkpoint-*


# 10p
# echo "abcdASTWOActionFlow10P"
# export CUDA_VISIBLE_DEVICES=0,1
# python train.py --experiment_name abcdASTWOActionFlow10P \
#  --model_name_or_path t5-large \
#   --do_train \
#   --do_eval \
#   --do_predict \
#   --num_train_epochs 100 \
#   --train_file ./data/processed/train_AST_abcd_woaction_flow_10p.json \
#   --validation_file ./data/processed/dev_AST_abcd_woaction_flow_10p.json \
#   --test_file ./data/processed/test_AST_abcd_woaction_flow_10p.json \
#   --text_column input \
#   --summary_column target \
#   --per_device_train_batch_size 8 \
#   --per_device_eval_batch_size 8 \
#   --predict_with_generate \
#   --output_dir ./results/ \
#   --save_strategy epoch \
#   --source_prefix "Predict AST: " \
#   --max_source_length 1024 \
#   --max_target_length 256 \
#   --val_max_target_length 256 \
#   --learning_rate 5e-5 \
#   --warmup_steps 500 \
#   --use_ast_metrics \
#   --use_fast_tokenizer False \
#   --num_beams 4

# # delete the saved model
# rm -rf results/abcdASTWOActionFlow10P_input_target_t5-large/checkpoint-*


# export CUDA_VISIBLE_DEVICES=0,1
# echo "abcdASTWOActionFlow30P"
# python train.py --experiment_name abcdASTWOActionFlow30P \
#  --model_name_or_path t5-large \
#   --do_train \
#   --do_eval \
#   --do_predict \
#   --num_train_epochs 100 \
#   --train_file ./data/processed/train_AST_abcd_woaction_flow_30p.json \
#   --validation_file ./data/processed/dev_AST_abcd_woaction_flow_30p.json \
#   --test_file ./data/processed/test_AST_abcd_woaction_flow_30p.json \
#   --text_column input \
#   --summary_column target \
#   --per_device_train_batch_size 8 \
#   --per_device_eval_batch_size 8 \
#   --predict_with_generate \
#   --output_dir ./results/ \
#   --save_strategy epoch \
#   --source_prefix "Predict AST: " \
#   --max_source_length 1024 \
#   --max_target_length 256 \
#   --val_max_target_length 256 \
#   --learning_rate 5e-5 \
#   --warmup_steps 500 \
#   --use_ast_metrics \
#   --use_fast_tokenizer False \
#   --num_beams 4

# # delete the saved model
# rm -rf results/abcdASTWOActionFlow30P_input_target_t5-large/checkpoint-*

# # half
# export CUDA_VISIBLE_DEVICES=0,1
# echo "abcdASTWOActionFlowHalf"
# python train.py --experiment_name abcdASTWOActionFlowHalf \
#  --model_name_or_path t5-large \
#   --do_train \
#   --do_predict \
#   --num_train_epochs 100 \
#   --train_file ./data/processed/train_AST_abcd_woaction_flow_half.json \
#   --validation_file ./data/processed/dev_AST_abcd_woaction_flow_half.json \
#   --test_file ./data/processed/test_AST_abcd_woaction_flow_half.json \
#   --text_column input \
#   --summary_column target \
#   --per_device_train_batch_size 8 \
#   --per_device_eval_batch_size 8 \
#   --predict_with_generate \
#   --output_dir ./results/ \
#   --save_strategy epoch \
#   --source_prefix "Predict AST: " \
#   --max_source_length 1024 \
#   --max_target_length 256 \
#   --val_max_target_length 256 \
#   --learning_rate 5e-5 \
#   --warmup_steps 500 \
#   --use_ast_metrics \
#   --use_fast_tokenizer False \
#   --num_beams 4

# # delete the saved model
# rm -rf results/abcdASTWOActionFlowHalf_input_target_t5-large/checkpoint-*

# all
# export CUDA_VISIBLE_DEVICES=0,1,2,3,4
# echo "abcdASTWOActionFlowAll"
# python train.py --experiment_name abcdASTWOActionFlowAll \
#  --model_name_or_path t5-large \
#   --do_train \
#   --do_eval \
#   --do_predict \
#   --num_train_epochs 100 \
#   --train_file ./data/processed/train_AST_abcd_woaction_flow_all.json \
#   --validation_file ./data/processed/dev_AST_abcd_woaction_flow_all.json \
#   --test_file ./data/processed/test_AST_abcd_woaction_flow_all.json \
#   --text_column input \
#   --summary_column target \
#   --per_device_train_batch_size 16 \
#   --per_device_eval_batch_size 16 \
#   --predict_with_generate \
#   --output_dir ./results/ \
#   --save_strategy epoch \
#   --source_prefix "Predict AST: " \
#   --max_source_length 1024 \
#   --max_target_length 256 \
#   --val_max_target_length 256 \
#   --learning_rate 5e-5 \
#   --warmup_steps 500 \
#   --use_ast_metrics \
#   --use_fast_tokenizer False \
#   --num_beams 1

# # delete the saved model
# rm -rf results/abcdASTWOActionFlowAll_input_target_t5-large/checkpoint-*