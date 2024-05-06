source_path="./"
model_name_or_path="../../data/utilities/sentence-transformers/glove-model-reduced-stopwords"
python ${source_path}/compute_sbert_avg_lexicon_reduce_lexcion_single_word.py --model_name_or_path ${model_name_or_path}\
	--input_file "../../data/tweets/combined_US_politician_twitter_timelines_2010-11-06_to_2022-12-31_clean.csv.gzip"\
	--output_file "../../data/tweets/combined_US_politician_twitter_timelines_2010-11-06_to_2022-12-31_honesty_component_scores_glove_singleword.csv.gzip"\
	--truth_lexicon "../../data/utilities/truth_seeking_p=0.05_swapped_wn_def_example.csv"\
	--belief_lexicon "../../data/utilities/belief_speaking_p=0.05_swapped_wn_def_example.csv"\
	--avg_dict --average_of_similarity\
    --corpus "Twitter"\
    --compression_type "gzip"\
    --N_bootstrap 37\
    #--smoke_test
