# merge-fasta-lines
Merge each sequence in a multi-line fasta file onto individual lines

## USAGE

There are two ways to use this script.

### 1. To linearize a single fasta file

You can specify a single input fasta file (-i) and the name of the file to output the results to (-o)

`./merge_fasta_lines.bash -i example.fasta -o example_merged.fasta`

The above code will take the `example.fasta` file, merge all of the sequneces within onto single lines, and save the results to `example_merged.fasta`

### 2. To linearize multiple fasta files

Alternatively, you can specify a directory containing multiple fasta files (-d) and a prefix to append to the names of their linearized versions (-p)

./merge_fasta_lines.bash -d example_directory -p prefix

This code will loop through the .fasta files in example_directory, merge the sequences in each file onto individual lines, and output the results to files named according to their parent file with prefix added.

**Note all files in example_directory must have a .fasta extension, not .fa**

## DEPENDENCIES

As long as you can use bash and awk, you should be able to use this script.

## REFERENCES

I modified the code from [this repository](https://gist.github.com/lindenb/2c0d4e11fd8a96d4c345) to create this script.
