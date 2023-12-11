# RemoteCam-script-kde-plasma
A script to use in conjunction with Android RemoteCam.
It assumes you do not have any webcam on your computer but an Android smartphone that you could use as a webcam.

## Instructions

1. Launch the RemoteCam application on your Android smartphone.
2. Make sure that the stream mode is activated before proceeding.

## Configuration

The script utilizes a configuration file located at the following path: `$HOME/.virtual_webcam_config`. It stores the previously used MJPEG server IP address.

## Usage

1. A dialog box will prompt you to enter your smartphone MJPEG server's IP address.
2. If you have entered an IP address previously, it will be displayed by default.
3. If you enter an IP address, it will be stored for future use.
4. The script will then ask for your user password to perform kernel modules operations, you must be in the sudoers.
5. After successfully entering the password, the script will load/unload the v4l2loopback module and execute ffmpeg with the entered IP address.

## Browser
Open your favorite browser and test your virtual webcam.
