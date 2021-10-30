#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo "Start Times"
echo "==> rplpl-slurm.queue1-dy-r5ad2xlarge-1.4.out <=="
head rplpl-slurm*.out -n 1

echo "==> rplspl-slurm.queue1-dy-r5ad2xlarge-1.5.out <=="
head rplspl-slurm*.out -n 1

echo "End Times"
echo "==> rplpl-slurm.queue1-dy-r5ad2xlarge-1.4.out <=="
tail rplpl-slurm*.out -n 5

echo "==> rplspl-slurm.queue1-dy-r5ad2xlarge-1.5.out <=="
tail rplspl-slurm*.out -n 5
