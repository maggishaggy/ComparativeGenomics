python /Genomics/kocherlab/berubin/local/developing/selection_pipeline/selection_pipeline.py -b /Genomics/kocherlab/berubin/comparative/halictids/halictid_selection -o halictid_test -r /Genomics/kocherlab/berubin/comparative/halictids/orthology/orthofinder/protein_seqs/OrthoFinder/Results_Jan29_4/Orthogroups/Orthogroups.txt -t 2 -a write_orthos -d halictids.params

python /Genomics/kocherlab/berubin/local/developing/selection_pipeline/selection_pipeline.py -b /Genomics/kocherlab/berubin/comparative/halictids/halictid_selection -o halictid -r /Genomics/kocherlab/berubin/comparative/halictids/orthology/orthofinder/protein_seqs/OrthoFinder/Results_Jan29_4/Orthogroups/Orthogroups.txt -p 16 -t 2 -a align_coding -d halictids.params

python /Genomics/kocherlab/berubin/local/developing/selection_pipeline/selection_pipeline.py -b /Genomics/kocherlab/berubin/comparative/halictids/halictid_selection -o halictid -r /Genomics/kocherlab/berubin/comparative/halictids/orthology/orthofinder/protein_seqs/OrthoFinder/Results_Jan29_4/Orthogroups/Orthogroups.txt -p 18 -t 10 -a alignment_filter -d halictids.params --nogap_min_count 6

python /Genomics/kocherlab/berubin/local/developing/selection_pipeline/selection_pipeline.py -b /Genomics/kocherlab/berubin/comparative/halictids/halictid_selection -o halictid -r /Genomics/kocherlab/berubin/comparative/halictids/orthology/orthofinder/protein_seqs/OrthoFinder/Results_Jan29_4/Orthogroups/Orthogroups.txt -p ${num_threads} -t 12 -a rer_converge -d halictids.params --outputfile sol_poly_aamls.txt --taxa_inclusion /Genomics/kocherlab/berubin/comparative/halictids/halictid_selection/sol_poly.txt -e /Genomics/kocherlab/berubin/comparative/halictids/halictid_selection/RAxML_bestTree.halictid.tree &> outputs/sol_poly_aamls.log