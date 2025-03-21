"use strict";

const videoEle = document.querySelector("#video");
const videoSrc = "stream/output.m3u8";

if (!Hls.isSupported()) {
    alert("HLS is not supported.");
    throw new Error("HLS is not supported.");
}

const hls = new Hls({
    liveSyncDurationCount: 1,
    liveMaxLatencyDurationCount: 3,
    enableWorker: true,
    lowLatencyMode: true
});
hls.loadSource(videoSrc);
hls.attachMedia(videoEle);
