# Just a notebook
I am sharing the code I build while following public AI tutorials and practicing.

If you want to try it, just follow the instructions below.

## Setup

A local env with jupyter notebook is provided.

Make sure to have `docker` installed and running in your 
Build the docker image by running:
```bash
make build
```

Deploy the jupyter notebook
```bash
make start
```

Stop the container
```bash
make stop
```

## Some libs used

- [Graphviz](https://graphviz.org/)
- [PyTorch](https://pytorch.org/)
- [Scikit-Learn](https://scikit-learn.org/stable/)
- [Transformers](https://huggingface.co/docs/transformers/installation)