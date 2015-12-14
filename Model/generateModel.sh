#!/bin/bash

path=`pwd`

../traduction_automatique/srilm/bin/i686-m64/ngram-count -order 3 -interpolate -kndiscount -unk -text ted/train.lowercased.fr -lm ted.lm
perl ../traduction_automatique/mosesdecoder/scripts/training/train-model.perl -root-dir . -external-bin-dir external -corpus ted/train.lowercased -f fr -e en -alignment grow-diag-final-and -reordering msd-bidirectional-fe -lm 0:3:$path/ted.lm >& training.out
