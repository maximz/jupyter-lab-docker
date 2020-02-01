# Usage:
# docker build -t maximz/jupyterlab .
# docker run --rm -p 9999:8888 -v $(pwd):/home/jovyan/work maximz/jupyterlab
FROM jupyter/datascience-notebook:latest

RUN jupyter labextension install --no-build @jupyterlab/toc @ryantam626/jupyterlab_code_formatter
RUN pip install jupyterlab_code_formatter
RUN pip install black

# build and enable
RUN jupyter lab build
RUN jupyter serverextension enable --py jupyterlab_code_formatter
RUN jupyter labextension enable toc

ENV JUPYTER_ENABLE_LAB=yes
