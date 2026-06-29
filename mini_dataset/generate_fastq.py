import gzip
import random

# Read genome sequence
sequence = ""

with open("MiniGenome.fa") as f:
    for line in f:
        if line.startswith(">"):
            continue
        sequence += line.strip()

READ_LENGTH = 50
NUM_READS = 20

r1 = gzip.open("sample_R1.fastq.gz", "wt")
r2 = gzip.open("sample_R2.fastq.gz", "wt")

for i in range(NUM_READS):

    start = random.randint(0, len(sequence) - READ_LENGTH - 1)

    read = sequence[start:start+READ_LENGTH]

    # reverse complement for paired read
    complement = str.maketrans("ATGC", "TACG")
    read2 = read.translate(complement)[::-1]

    quality = "I" * READ_LENGTH

    r1.write(f"@Read{i}/1\n{read}\n+\n{quality}\n")
    r2.write(f"@Read{i}/2\n{read2}\n+\n{quality}\n")

r1.close()
r2.close()

print("FASTQ files created successfully!")
