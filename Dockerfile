FROM clojure:openjdk-11-tools-deps-buster

# prep. image for downloading python
RUN apt update && apt upgrade -y
RUN apt install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev curl libsqlite3-dev libbz2-dev

# install Python
RUN wget https://www.python.org/ftp/python/3.9.0/Python-3.9.0.tar.xz
RUN tar -xf Python-3.9.0.tar.xz && cd Python-3.9.0 && ./configure && make altinstall

# install nodejs
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt install -y nodejs

# I don't install this because this also installs python3.7 (https://packages.debian.org/buster/software-properties-common)
# RUN apt install -y software-properties-common

# TODO: get this working
# create aliases
# RUN ln -s pip3.9 pip

# setup environment
ENV PIP_NO_CACHE_DIR "true"
COPY ./requirements*.txt /code/
WORKDIR /code
# in this command, we reference "pip3.9", but from this point forward, we can just refer to "pip"
RUN pip3.9 install --upgrade pip

# pip install packages
RUN pip install -r requirements.txt

RUN jupyter serverextension enable voila && jupyter server extension enable voila

# install and enable ipyslickgrids
RUN git clone https://github.com/johnomernik/qgrid --depth 1 && cd qgrid && python3.9 setup.py install && pip install qgrid2-1.1.3-py3-none-any.whl
