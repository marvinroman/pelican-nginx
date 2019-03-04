FROM nginx:1.15.9-alpine

RUN apk update
RUN apk add --virtual .permanent-dependancies \
    python3

RUN apk add --virtual .build-dependancies \
    curl \
    git

WORKDIR /tmp
RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
RUN ln -s /usr/bin/python3 /usr/bin/python
RUN python3 get-pip.py
RUN pip install pelican
RUN pip install Markdown

WORKDIR /app
RUN git clone --recursive https://github.com/getpelican/pelican-themes pelican-themes

#RUN pelican content -t ./pelican-themes/attila

COPY etc /etc

# Cleanup
#RUN rm -rf /tmp/*
#RUN apk del .build-dependancies
