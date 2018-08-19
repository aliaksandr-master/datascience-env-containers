FROM tensorflow/tensorflow:1.10.0-devel-gpu-py3

RUN apt-get update \
    && apt-get install -y software-properties-common \
        build-essential graphviz gcc cmake git wget unzip software-properties-common \
        yasm pkg-config libswscale-dev libtbb2 libtbb-dev python3 python3-dev python3-pip \
        libjpeg-dev libpng-dev libtiff-dev libjasper-dev libavformat-dev libpq-dev httpie \
        libbz2-dev

RUN apt-get install zlib1g-dev \
    && cd /opt \
    && wget https://www.python.org/ftp/python/3.6.6/Python-3.6.6.tgz \
    && tar -xvf Python-3.6.6.tgz \
    && cd Python-3.6.6 \
    && ./configure \
    && make \
    && make install \
    && curl -O https://bootstrap.pypa.io/get-pip.py \
    && python3.6 get-pip.py \
    && rm get-pip.py

RUN python3.6 -m pip install --upgrade pip
RUN python3.6 -m pip install numpy==1.15.0 numba==0.38.1 scipy==1.1.0 pandas==0.23.4 scikit-image==0.14.0 scikit-learn==0.19.1 sklearn==0.0
RUN python3.6 -m pip install bokeh==0.13.0 matplotlib==2.2.2 plotly==3.1.1 seaborn==0.9.0
RUN python3.6 -m pip install catboost==0.9.1.1 fbprophet
RUN python3.6 -m pip install keras==2.2.2 theano==1.0.2
RUN python3.6 -m pip install requests==2.19.1
RUN python3.6 -m pip install statsmodels==0.9.0
RUN python3.6 -m pip install stocktrends==0.1.1 nsepy==0.7 pandas-datareader==0.6.0
RUN python3.6 -m pip install nltk===3.3.0
RUN python3.6 -m pip install mypy pytest snapshottest
RUN python3.6 -m pip install ipykernel
RUN python3.6 -m ipykernel install --user
