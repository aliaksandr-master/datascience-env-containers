FROM tensorflow/tensorflow:latest-gpu-py3

RUN apt-get update && apt-get install -y build-essential graphviz gcc cmake git wget unzip yasm pkg-config libswscale-dev libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libavformat-dev libpq-dev

RUN pip install --upgrade pip

RUN pip install numpy==1.13.3

RUN pip install scikit-image seaborn theano keras pydot-ng statsmodels requests fbprophet plotly catboost stocktrends nsepy bokeh

RUN pip install pandas-datareader numba
