
This is a Docker image for interactive usage of the [Hail](https://hail.is/) genomic data analysis library.
It contains installations of [Jupyter notebook](https://jupyter.org/), Java 8 and Hail itself.

The typical usage is:
- `cd` into the directory where you have all your genomic data.
- Run `docker run --rm -ti -p 8888:8888 -v $(pwd):/home/jovyan/work huy123/hail`.
- The command will spin up a Docker container containing the server portion of a Jupyter notebook and show you the URL at which you can access the Jupyter notebook environment.
Copy the one that look like `http://127.0.0.1:8888/?token=someRandomizedString` and paste into your browser of choice.
You should see your current directory content in the resulting browser window.
