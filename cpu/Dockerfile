FROM ubuntu:18.04

RUN apt-get update --fix-missing && apt-get install -y \ 
    software-properties-common build-essential curl pkg-config rsync unzip gcc cmake git wget \
    && add-apt-repository "deb http://security.ubuntu.com/ubuntu xenial-security main" && apt-get update

RUN apt-get update && apt-get install -y \
    libfreetype6-dev libhdf5-serial-dev libpng-dev libzmq3-dev \
    python3.7 python3-dev python3-pip \
    graphviz yasm pkg-config \
    libswscale-dev libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper1 libjasper-dev libavformat-dev libpq-dev \
    && apt-get clean && apt-get autoclean -y && apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

RUN python3 -m pip install --upgrade pip && python3 -m pip --no-cache-dir install \
    Pillow \
    h5py \
    ipykernel \
    jupyter \
    tensorflow===1.9.0 keras==2.1.6 theano==1.0.2 \
    numpy==1.13.3 numba==0.38.1 nsepy==0.7 scipy==1.0.1 pandas==0.22.0 pandas-datareader==0.6.0 \
    scikit-image==0.14.0 scikit-learn==0.19.1 \
    bokeh==0.12.16 matplotlib==2.2.2 plotly==2.7.0 seaborn==0.8.1 \
    catboost==0.9.1.1 fbprophet \
    requests==2.18.4 \
    statsmodels==0.9.0 \
    stocktrends==0.1.1 \
    nltk===3.3.0
