FROM tensorflow/tensorflow:1.10.0-devel-gpu-py3

RUN apt-get update \
    && apt-get install -y software-properties-common \
        build-essential graphviz gcc cmake git wget unzip software-properties-common \
        yasm pkg-config libswscale-dev libtbb2 libtbb-dev python3 python3-dev python3-pip \
        libjpeg-dev libpng-dev libtiff-dev libjasper-dev libavformat-dev libpq-dev \
        libbz2-dev

RUN apt-get install -y zlib1g-dev libffi-dev libsqlite3-dev libreadline-gplv2-dev libncursesw5-dev libssl-dev tk-dev libgdbm-dev libc6-dev libbz2-dev \
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

RUN python3.6 -m pip install numba==0.38.1 cython==0.28.5
RUN python3.6 -m pip install numpy==1.15.1 scipy==1.1.0 pandas==0.23.4 "dask[complete]"==0.18.2
RUN python3.6 -m pip install bokeh==0.13.0 matplotlib==2.2.3 plotly==3.1.1 seaborn==0.9.0
RUN python3.6 -m pip install catboost==0.9.1.1 fbprophet keras==2.2.2 theano==1.0.2 statsmodels==0.9.0 scikit-image==0.14.0 scikit-learn==0.19.2 sklearn==0.0 nltk===3.3.0
RUN python3.6 -m pip install requests==2.19.1
RUN python3.6 -m pip install stocktrends==0.1.1 nsepy==0.7 pandas-datareader==0.6.0
RUN python3.6 -m pip install mypy==0.620 pytest==3.7.2 pytypes==1.0b5 flake8==3.5.0 snapshottest==0.5.0 pytype==2018.8.10 flake8-self==0.2.2 flake8-regex==0.3 flake8-docstrings==1.3.0 flake8-mypy==17.8.0 flake8-super-call==1.0.0
RUN python3.6 -m pip install ipykernel==4.8.2 fast_progress==0.0.3 ipywidgets==7.4.0
RUN python3.6 -m ipykernel install --user
RUN python3.6 -m pip install deco
RUN python3.6 -m pip install memory_profiler
