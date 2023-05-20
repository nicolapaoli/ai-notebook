FROM python

#Install graphviz
RUN apt-get update -y && apt-get install graphviz  -y

COPY . /ai
WORKDIR /ai
RUN pip install -r requirements.txt

CMD sh -c "jupyter notebook --allow-root --ip=0.0.0.0"