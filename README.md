# How to generate SSL ceritficate

Copy this directory to the production server that you are looking to gain an SSL certificate for:

`$ scp -r ssl_docker destination:directory`

On your **development machine**, follow the instruction to install Certbot on the [Certbot Website](https://certbot.eff.org/instructions) for a **Web Hosting Product** on the platform you're developing on.

Once Certbot is installed then enter the following in your terminal:
`$ sudo certbot -d yourdomain.com --manual certonly --debug-challenges`

Select **Yes** for the question about IP logging.

You will now be given two long strings that you need to copy into the Dockerfile that is now on your **production server**.
1. From the section *Create a file containing just this data:*, copy the string into the CHALLENGE_TOKEN environment variable
2. From the section *And make it available on your web server at this URL:*, copy the long random string from the URL that starts after */.well-known/acme-challenge/...* into the CHALLENGE_ADDRESS environment variable

On your **production server** you can now run:

`$ docker-compose up --build`

Once the container is up and running you can now proceed with the rest of the Certbot process on your **development machine** to be given you certificate. You can now copy this to the relevant place on your **production server** and now you are set up with an HTTPS site.