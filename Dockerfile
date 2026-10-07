# Minimal Docker image for DAS_Tool using Micromamba base
FROM mambaorg/micromamba:debian13-slim

# install DAS_Tool
RUN micromamba create -y -n das_tool -c defaults -c bioconda -c conda-forge das_tool==1.1.7 && \
    micromamba clean --all --yes
ENV ENV_NAME=das_tool
