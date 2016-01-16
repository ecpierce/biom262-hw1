#PBS -l nodes=1:ppn=1
#PBS -l walltime=00:20:00
#PBS -M <e1pierce@ucsd.edu>
#PBS -V
#PBS -q hotel

cat ~/code/biom262-2016/weeks/week01/data/tf.bed | awk '{if ($4 == "NFKB") print $0}' > tf.nfkb.bed
wc -l tf.nfkb.bed
echo '--- First 10 lines ---'
head tf.nfkb.bed
echo '--- Random 10 lines ---'
awk -v seed=907 'BEGIN{srand(seed);}{ if (rand() < 0.5 ) {print $0}}'  tf.nfkb.bed | head
echo '--- Last 10 lines ---'
tail tf.nfkb.bed
cat ~/code/biom262-2016/weeks/week01/data/gencode.v19.annotation.chr22.gtf | awk '{if ($3 == "transcript") print $0}' > gencode.v19.annotation.chr22.transcript.gtf
wc -l gencode.v19.annotation.chr22.transcript.gtf
echo '--- First 10 lines ---'
head gencode.v19.annotation.chr22.transcript.gtf
echo '--- Random 10 lines ---'
awk -v seed=907 'BEGIN{srand(seed);}{ if (rand() < 0.5 ) {print $0}}'  gencode.v19.annotation.chr22.transcript.gtf | head
echo '--- Last 10 lines ---'
tail gencode.v19.annotation.chr22.transcript.gtf
