FROM ucsb/jupyter-base:latest

MAINTAINER LSIT Systems <lsitops@lsit.ucsb.edu>

USER root

RUN apt update && \
    apt install dvipng texlive-latex-extra texlive-fonts-recommended cm-super && \
    apt clean

RUN pip install matplotlib numpy scipy statsmodels SciencePlots

USER $NB_USER
