## npm
```
npm install
```

## build
```
docker build -t imagemagick-nodejs:latest .
```
## run
```
docker run -it --rm -v $(pwd):/app imagemagick-nodejs:latest
```

## image
カレントディレクトリにimage.jpgをおけばリサイズされる
