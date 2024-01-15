# Launch your own Baserow server

## Baserow
Baserow is an open-source no-code database tool that allows users to create and manage databases without requiring extensive programming knowledge. It offers a user-friendly interface for designing databases and is designed to be highly customizable, making it a versatile solution for various data management needs

For simplicity, we'll deploy our Baserow server using an acorn image.


## What is Acorn?
Acorn is a new cloud platform that allows you to easily deploy, develop and manage web services with containerization.  A single acorn image can deploy all that you need: from a single container webserver, to a multi service Kubernetes cluster with high availability.  Don't worry if you don't understand what all those terms mean; we don't have to know that in order to deploy our server.

## Setup Acorn Account
Setup an acorn account at [acorn.io](https://acorn.io).  This can be a free account for your first deployment, and if you'd like additional storage space you can look into the pro account or enterprise.  You will need a Github account to signup as shown in the image below.

![signin_acorn](https://github.com/randall-coding/opensupports-docker/assets/39175191/d46815fb-d2d5-42cd-b93d-41ca541a63bd)

## Install acorn cli 
First we need to install acorn-cli locally.  Choose an install method from the list below:

**Linux or Mac** <br>
`curl https://get.acorn.io | sh`

**Homebrew (Linux or Mac)** <br>
`brew install acorn-io/cli/acorn`

**Windows** <br> 
Uncompress and move the [binary](https://cdn.acrn.io/cli/default_windows_amd64_v1/acorn.exe) to your PATH

**Windows (Scoop)** <br>
`scoop install acorn`

For up to date installation instructions, visit the [official docs](https://runtime-docs.acorn.io/installation/installing).

## Login with CLI
Back in our local command terminal login to acorn.io with: <br>
`acorn login acorn.io` 

## Deploying Acorn
Now that we have the acorn cli configured, we can deploy our acorn image with a few simple commands.

Clone the repo locally if you haven't already with:

`git clone https://github.com/randall-coding/baserow-acorn.git`

Next build and run.

`acorn build -t baserow`

`acorn run -n baserow baserow`

Visit your acorn dashboard to see if your deployment was successful.

Click on the baserow deployment, and find the endpoint section on the right side panel.  This is your baserow instance link.

![baserow_acorn_ui]()

![baserow_endpoint]()

## Configure Baserow

Go to your acorn baserow URL. Then you'll be prompt to create your baserow account. Enter the necessary information and click "Create my account".

![base_row_account]()

After making the account, you'll see the main dashboard:

![base_dashboard]()

### SMTP Configuration (Optional)

To configure SMTP, you have to modify the Acornfile to add the necessary Environment variables ([more info](https://baserow.io/docs/installation/configuration)). Edit these to allow Baserow use your SMTP configurations:

- FROM_EMAIL: <email_from_address>
- EMAIL_SMTP: "yes" If any value is set, baserow will use this SMTP configuration, otherwise it ignores SMTP and logs email to stdout
- EMAIL_SMTP_USE_TLS: <true_or_false>
- EMAIL_SMTP_USE_SSL: <true_or_false>
- EMAIL_SMTP_HOST: <smtp_host_address>
- EMAIL_SMTP_PORT: <smtp_port>
- EMAIL_SMTP_USER: <smtp_username>
- EMAIL_SMTP_PASSWORD: <smtp_password>

Congratulations! Your Baserow installation is now complete.

## Conclusion
That's all there is to it.  We've now got a Baserow server up and running from an acorn image.  For more detailed instructions on working with your Baserow server see the getting started and configuration documentation.

## References
* [Baserow Documentation](https://baserow.io/docs/index)
* [Getting started with Acorn](https://docs.acorn.io/getting-started)