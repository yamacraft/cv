FROM node:10.16.1-stretch-slim

RUN apt-get update
RUN apt-get install -y git bzip2 fontconfig

RUN wget "https://github.com/googlei18n/noto-cjk/blob/master/NotoSansCJKsc-Medium.otf?raw=true" -O /usr/local/share/fonts/NotoSansCJKsc-Medium.otf
RUN fc-cache -fv

RUN npm install -g markdown-pdf --unsafe-perm

WORKDIR app

CMD markdown-pdf cv.md -o public/cv.pdf