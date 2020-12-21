FROM python:3.8-slim

RUN apt-get -y update  && apt-get install -y \
  python3-dev \
  apt-utils \
  python-dev \
  build-essential && \
  rm -rf /var/lib/apt/lists/* && \
  pip install --upgrade pip && \
  pip install --upgrade setuptools && \
  pip install cython numpy matplotlib pystan pandas convertdate lunarcalendar holidays tqdm

RUN pip install fbprophet