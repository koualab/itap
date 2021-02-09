[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

# itap: fast and accurate annotation of venom gland transcriptome

## Introduction

Venom gland transcriptome annotation is the process of identifying putatives toxin-like peptides in a set a transcriptomic sequences, and labelling them with family, presence/absence signal information. itap (Improved Transcriptome Annotation Pipeline) is a software tool to annotate spider venom gland transcriptome and will suport in next release cone, scorpions and other well-known venomous animal venom gland transcriptome. itap produces standards-compliant output files.

## Installation

### Linux or MAC based OS

```
# Install perl packages
sudo cpanm Bio::Perl Text::CSV::Hashify Readonly File::Copy Getopt::Declare File::Spec

# Install kallisto
See https://pachterlab.github.io/kallisto/download

# Install hmmsearch
See https://hmmer.org

# Install hmmcompete
See https://www.mdpi.com/2072-6651/9/8/245/s1
or https://github.com/koualab/hmmcompete

# Download itap
git clone https://github.com/koualab/itap.git $HOME/itap

# Copy itap to bin folder and hmm db to db folder
sudo cp itap /usr/local/bin
sudo mkdir /usr/share/itap/db
sudo cp itap/db/* /usr/share/itap/db

# Add path to $PATH
echo "$PATH:/usr/share/itap/db/" >> ~/.bashrc
```

## Test

* Type `itap -help` and it should output its help screen.
* Type `itap -version` and you should see an output like itap version 0.1 (Tue Dec 29 14:17:51 2020).
  


## Invoking itap

```
itap -t transcripts.fa.gz -f reads_R1.fq.gz -r reads_R2.fq.gz
```
  

## Output files


## Command line options

```
General:
	--transcripts, -t    Specify transcriptome file [required]
	--forward_reads, -f  Specify forward reads file [required]
	--reverse_reads, -r  Specify reverse reads file [required]

Outputs:
	--outdir, -o  Specify output folder name
	--dbdir       Specify path to databases folder
	--force       Force reuse of output folder

Setup:
	--hmm         Specify the path to personal hmm lib
	--quiet       Decrease verbosity

Computation:
	--cpus        Specify number of threads

Standard meta-options:
	--version, -v   Print program version and exit
	--usage, -u     Print program usage and exit
	--man           Print man page
	--help, -h      Print help and exit

```
  
  
## Bugs

Submit problems or requests to the [Issue Tracker](https://github.com/itap/issues).

  


## Dependencies

### Mandatory

* **BioPerl**  
  Used for I/O fasta files.  
  *Stajich et al, The Bioperl toolkit: Perl modules for the life sciences. Genome Res. 2002 Oct;12(10):1611-8.*

* **hmmcompete**  
  Used for precursors sequences identification and classification.  
  *Koua, D.; Kuhn-Nentwig, L. Spider Neurotoxins, Short Linear Cationic Peptides and Venom Protein Classification Improved by an Automated Competition between Exhaustive Profile HMM Classifiers. Toxins 2017, 9, 245.*

* **SignalP**  
  Used to find signal peptide in precursors sequences.  
  *Almagro Armenteros  et al, SignalP 5.0 improves signal peptide predictions using deep neural networks. Nat Biotechnol 37, 420–423 (2019)*

## Licence

GPL v3

## Authors

* Anicet Ebou
* Dominique Koua

