FROM tensorflow/tensorflow:latest-py3

RUN apt-get update \
    && apt-get install -y \
        build-essential graphviz gcc cmake git wget unzip \
        yasm pkg-config libswscale-dev libtbb2 libtbb-dev \
        libjpeg-dev libpng-dev libtiff-dev libjasper-dev libavformat-dev libpq-dev httpie

RUN pip install --upgrade pip

RUN pip install numpy==1.13.3 numba==0.38.1 nsepy==0.7 scipy==1.0.1
RUN pip install scikit-image==0.14.0 scikit-learn==0.19.1 sklearn==0.0
RUN pip install bokeh==0.12.16 matplotlib==2.2.2 plotly==2.7.0 seaborn==0.8.1
RUN pip install catboost==0.8.1.1
RUN pip install fbprophet
RUN pip install keras==2.1.6 theano==1.0.2
RUN pip install requests==2.18.4
RUN pip install statsmodels==0.9.0
RUN pip install stocktrends==0.1.1
RUN pip install pandas pandas-datareader
RUN pip install nltk===3.3.0