docker run --rm -p 8888:8888 -v $(pwd):/home/jovyan/work maximz/jupyterlab

docker run --user root --rm -p 8888:8888 -v $(pwd):/home/jovyan/work -e GRANT_SUDO=yes maximz/jupyterlab start-notebook.sh --NotebookApp.token=''

