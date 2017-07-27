# A Quick Guide for an alternative local->live web development hosting
## Getting Started
**Tools Used:**
* [VirtualBox](https://www.virtualbox.org/wiki/VirtualBox)
* [Vagrant](https://www.vagrantup.com/)
* [ngrok](https://ngrok.com/)

### VirtualBox + Vagrant Setup
>For initual setup of VMs please see my other guide [here](https://github.com/louismin/local-webdev-environment).

**Make sure to configure your VM using the files given in this repository- not this [one](https://github.com/louismin/local-webdev-environment).**

### TL;DR
>A quick setup to configure your guest machine to render web pages locally and to tunnel live using the web technology- ngrok.

The following configuration will install the necessary packages and dependencies to locally run web pages.
You can check if the initial setup was correctly installed by typing:
```
http://localhost:4567
```
in your browser (a page of list directories should be displaying).

After checking this, you will have to download a specific version of [ngrok](https://ngrok.com/download) - based on your OS. After installing the zip file, place the file in your project folder and simply unzip the file (at this point you can remove the zip file). I suggest doing this process on your host machine **not** your guest machine as it will require an unnecessary additional package installation to unzip the file.

Also, make sure to sign up for an account (it's free) in order to receive your authtoken which you will need.

After doing so, within your guest machine, access the shared folder and enter your project folder. Within your directory, run this command:
```
./ngrok authtoken _your authtoken_
```
Now finally, once you run:
```
./ngrok http 80
```
a message prompt will display. Simply use the given url, which will look something like:
```
http://xxxxx.ngrok.io
```
under the forwarding label. This should display the same web page as your localhost - the only difference is now you can share your given url with others to demonstrate your production. Your web page is now live!
