# Live Stream Demo

- This is a little demo about how live stream works. This is at very primitive level.
- It captures the live video from Webcam and create a live stream from it.
- It uses `ffmpeg` to capture video from Webcam and generate necessary file for live stream.
- It uses `HLS` protocol to serve live stream.
- In the frontend side, `hls.js` library is used to consume the live stream.

## How to run

### Dependencies :
- It only works on linux. Because it uses `v4l2` (Video for linux 2) protocol to capture video from webcam.
- `ffmpeg` is required to generate live stream.
- npm package `serve.js` is used to serve the live stream.

### Installing Dependencies :
- On Debian based systems (Debian, Ubuntu, Pop!_OS), run following command to install `ffmpeg` :
```bash
sudo apt update
sudo apt install ffmpeg
```
- To install `serve.js` pacakge, run this command : (Assuming that you have `node.js` installed)
```bash
npm install -g serve
```

### Running the demo :
- Make sure that `live.sh` script is executable. Use this command to make it executable :
```bash
chmod +x live.sh
```
- Run this command to start generating the live stream :
```bash
./live.sh
```
- Run this command to start serving the live stream :
```bash
serve .
```
