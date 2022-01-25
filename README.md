# Tetris
Tetris game built on HTML5 Canvas and Javascript. Built mostly as a learning exercise for array matrixes and how to manipulate them.
[Live app](https://squaredrop.io)

## Getting Started
Running the game is simple:
### Prebuilt Docker image (not easily editable)
```sh
docker run -d -p 80:80 --name tetris bsord/tetris
```
### Nginx Docker with volume mounts (easily edit)
```sh
mkdir ~/tetris
cd ~/tetris
git clone https://github.com/bsord/tetris .
docker run --name tetris -v /home/YOURUSERNAME/tetris/:/usr/share/nginx/html:ro -d -p 88:80 nginx
```

### Standalone Local
```sh
mkdir ~/tetris
cd ~/tetris
git clone https://github.com/bsord/tetris .
sudo cp * /usr/share/nginx/html
```
Once downloaded and place in a web server directory, open it in your browser

