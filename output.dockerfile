FROM node:lts-slim

RUN apt-get update
RUN apt-get install -y git bzip2 fontconfig

RUN wget "https://github.com/googlefonts/noto-cjk/blob/main/Sans/OTF/Japanese/NotoSansCJKjp-Medium.otf?raw=true" -O /usr/local/share/fonts/NotoSansCJKjp-Medium.otf
RUN fc-cache -fv

RUN npm install -g markdown-pdf --unsafe-perm

WORKDIR app

CMD markdown-pdf cv.md -s pdf.css -o public/cv.pdf