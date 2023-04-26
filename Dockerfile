FROM python

#Install graphviz
RUN apt update -y && apt install libiconv graphviz python-graphviz pango  -y

COPY . /ai
WORKDIR /ai
RUN pip install -r requirements.txt

CMD sh -c "jupyter notebook --allow-root --ip=0.0.0.0"