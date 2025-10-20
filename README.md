# VG Deployment

This is a repo with everything you need to deploy the API for [ValoGraphs](https://valographs.com) to an ubuntu virtual machine.

## Prerequisites

-   A remote Ubuntu virtual machine
-   A .env file as specified in the vg-backend repo
-   A domain name
-   A CNAME DNS record pointing to the IP address of the virtual machine

## Steps

1. Access the virtual machine via SSH or your preferred remote access tool
2. Clone this repo and cd into it
    ```bash
    git clone https://github.com/jfang324/vg-deploy.git && cd vg-deploy
    ```
3. Run the provisioning script
    ```bash
    bash provision.sh
    ```
4. Copy the .env.backend file to the root of the vg-deploy repo

    ```bash
    scp -i <path-to-key> .env.backend <username>@<ip-address>:~/vg-deploy/.env.backend
    ```

5. Modify the Caddyfile to point to your domain name

6. Run the deployment script
    ```bash
    bash deploy.sh
    ```
7. Verify that the deployment was successful using curl on the health endpoint
    ```bash
    curl -s https://<domain-name>/v1/health
    ```
