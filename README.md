Install the environment that you need by:

```bash
conda env create -f environment.yml
```

or

```bash
mamba env create -f environment.yml
```

Generally the pipeline is about cut adapter, QC, mapping, and count. You could use DESeq2 to get the differentially expressed genes.


In a slurm cluster, run the pipeline by 

```bash
sbatch snakemake.sh
```

If you are not in a cluster, run the pipeline by
```bash
bash snakemake.sh
```
