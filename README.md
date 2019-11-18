![](https://github.com/huy-nguyen/docker-hail/workflows/Docker%20Build%20and%20Publish/badge.svg)

This is a Docker image for interactive usage of the [Hail](https://hail.is/) genomic data analysis library.
It contains installations of [Jupyter notebook](https://jupyter.org/), Java 8 and Hail itself.

The typical usage is:
- `cd` into the directory where you have all the genomic data that you want to use Hail for.
- Run `docker run --rm -ti -p 8888:8888 -v $(pwd):/home/jovyan/work:delegated huy123/hail`. 
The command will spin up a Docker container containing the server portion of a Jupyter notebook and display a few URLs at which you can access the Jupyter notebook environment.
- Copy the URL that look like `http://127.0.0.1:8888/?token=someRandomizedString` and paste into your browser of choice.
You should see the current directory's content in the resulting browser window.
