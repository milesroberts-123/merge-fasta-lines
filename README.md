# merge-fasta-lines
Merge each sequence in a multi-line fasta file onto individual lines

Fasta files are typically formatted with line wraps, like this:

```
>seq1
ATGCATGC
ATGCATGC
ATGCATGC
>seq2
TATATATA
GCGCGCGC
TATATATA
GCGCGCGC
```

However, some bioinformatic tools require each fasta sequence to be on a single line, like this:

```
>seq1
ATGCATGCATGCATGCATGCATGC
>seq2
TATATATAGCGCGCGCTATATATAGCGCGCGC
```

This script takes fasta files in the former format and converts them into the latter format. In other words, it **linearizes** fasta files.

## USAGE

There are two ways to use this script.

### 1. To linearize a single fasta file

You can specify a single input fasta file (-i) and the name of the file to output the results to (-o)

`./merge_fasta_lines.bash -i example.fasta -o example_merged.fasta`

The above code will take the `example.fasta` file, merge all of the sequneces within onto single lines, and save the results to `example_merged.fasta`

### 2. To linearize multiple fasta files

Alternatively, you can specify a directory containing multiple fasta files (-d) and a prefix to append to the names of their linearized versions (-p)

`./merge_fasta_lines.bash -d example_directory -p prefix`

This code will loop through the .fasta files in example_directory, merge the sequences in each file onto individual lines, and output the results to files named according to their parent file with prefix added.

**Note all of the fasta files you want to linearize in your target directory must have a .fasta extension, not .fa**

## DEPENDENCIES

As long as you can run bash and awk, you should be able to use this script.

## REFERENCES

I modified the code from [this repository](https://gist.github.com/lindenb/2c0d4e11fd8a96d4c345) to create this script.
