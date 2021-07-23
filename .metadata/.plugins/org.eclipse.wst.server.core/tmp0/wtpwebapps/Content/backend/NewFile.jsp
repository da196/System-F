<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>AudioSpectrum in JavaScript</title>
    </head>
    <body>
        <!-- Create a div where the audio waves will be shown --> 
        <div id="audio-spectrum" style="width: 250px; heigth: 400px;"></div>

        <!-- Create action buttons -->
        <input type="button" id="btn-play" value="Play" disabled="disabled"/>
        <input type="button" id="btn-pause" value="Pause" disabled="disabled"/>
        <input type="button" id="btn-stop" value="Stop" disabled="disabled" />

        <!-- Load the wavesurferscript , in this case from a CDN -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/wavesurfer.js/1.3.7/wavesurfer.min.js"></script>

        <script>
            // Store the 3 buttons in some object
            var buttons = {
                play: document.getElementById("btn-play"),
                pause: document.getElementById("btn-pause"),
                stop: document.getElementById("btn-stop")
            };

            // Create an instance of wave surfer with its configuration
            var Spectrum = WaveSurfer.create({
                container: '#audio-spectrum',
                progressColor: "#03a9f4"
            });

            // Handle Play button
            buttons.play.addEventListener("click", function(){
                Spectrum.play();

                // Enable/Disable respectively buttons
                buttons.stop.disabled = false;
                buttons.pause.disabled = false;
                buttons.play.disabled = true;
            }, false);

            // Handle Pause button
            buttons.pause.addEventListener("click", function(){
                Spectrum.pause();

                // Enable/Disable respectively buttons
                buttons.pause.disabled = true;
                buttons.play.disabled = false;
            }, false);


            // Handle Stop button
            buttons.stop.addEventListener("click", function(){
                Spectrum.stop();

                // Enable/Disable respectively buttons
                buttons.pause.disabled = true;
                buttons.play.disabled = false;
                buttons.stop.disabled = true;
            }, false);


            // Add a listener to enable the play button once it's ready
            Spectrum.on('ready', function () {
                buttons.play.disabled = false;
            });
            
            // If you want a responsive mode (so when the user resizes the window)
            // the spectrum will be still playable
            window.addEventListener("resize", function(){
                // Get the current progress according to the cursor position
                var currentProgress = Spectrum.getCurrentTime() / Spectrum.getDuration();

                // Reset graph
                Spectrum.empty();
                Spectrum.drawBuffer();
                // Set original position
                Spectrum.seekTo(currentProgress);

                // Enable/Disable respectively buttons
                buttons.pause.disabled = true;
                buttons.play.disabled = false;
                buttons.stop.disabled = false;
            }, false);

            // Load the audio file from your domain !
            Spectrum.load('vid/001.mp3');
        </script>
    </body>
</html>                                                                                                                                                                                                                                                                                                        