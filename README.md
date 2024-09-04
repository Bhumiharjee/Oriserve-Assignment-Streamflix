Here's the detailed `README.md` file with the correct GitHub repository link and complete instructions:

```markdown
# StreamFlix Deployment

This guide provides detailed steps to deploy the StreamFlix application on NGINX using two methods: Docker and a traditional non-Docker setup.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Method 1: Deployment Using Docker](#method-1-deployment-using-docker)
  - [Step 1: Install Docker](#step-1-install-docker)
  - [Step 2: Clone the Repository](#step-2-clone-the-repository)
  - [Step 3: Build the Docker Image](#step-3-build-the-docker-image)
  - [Step 4: Run the Docker Container](#step-4-run-the-docker-container)
- [Method 2: Traditional Deployment Without Docker](#method-2-traditional-deployment-without-docker)
  - [Step 1: Install NGINX](#step-1-install-nginx)
  - [Step 2: Clone the Repository](#step-2-clone-the-repository-1)
  - [Step 3: Configure NGINX](#step-3-configure-nginx)
  - [Step 4: Deploy the Application](#step-4-deploy-the-application)
- [Testing the Deployment](#testing-the-deployment)
- [Contact](#contact)

## Prerequisites

Before you begin, ensure you have the following:

- Access to a server with a Linux-based OS (e.g., Ubuntu).
- A domain name (optional but recommended).
- Basic command-line knowledge.

## Method 1: Deployment Using Docker

### Step 1: Install Docker

If Docker is not installed, use the following commands:

```bash
sudo apt-get update
sudo apt-get install -y docker.io
```

### Step 2: Clone the Repository

Clone the StreamFlix repository from GitHub:

```bash
git clone https://github.com/Bhumiharjee/Oriserve-Assignment-Streamflix.git
cd Oriserve-Assignment-Streamflix
```

### Step 3: Build the Docker Image

Build the Docker image for StreamFlix:

```bash
docker build -t streamflix:latest .
```

### Step 4: Run the Docker Container

Run the Docker container with the built image:

```bash
docker run -d -p 80:80 streamflix:latest
```

This command will run the StreamFlix application in a Docker container and expose it on port 80.

## Method 2: Traditional Deployment Without Docker

### Step 1: Install NGINX

If NGINX is not installed, install it using:

```bash
sudo apt-get update
sudo apt-get install -y nginx
```

### Step 2: Clone the Repository

Clone the StreamFlix repository from GitHub:

```bash
git clone https://github.com/Bhumiharjee/Oriserve-Assignment-Streamflix.git
cd Oriserve-Assignment-Streamflix
```

### Step 3: Configure NGINX

Copy the provided NGINX configuration file to the appropriate directory:

```bash
sudo cp deploy/nginx_streamflix.conf /etc/nginx/sites-available/streamflix
```

Create a symbolic link to enable the configuration:

```bash
sudo ln -s /etc/nginx/sites-available/streamflix /etc/nginx/sites-enabled/
```

Test the NGINX configuration:

```bash
sudo nginx -t
```

If the test is successful, restart NGINX:

```bash
sudo systemctl restart nginx
```

### Step 4: Deploy the Application

Copy the application files to the web root directory:

```bash
sudo cp -r ./app /var/www/streamflix
```

Set the appropriate permissions:

```bash
sudo chown -R www-data:www-data /var/www/streamflix
```

## Testing the Deployment

After deploying using either method, visit your server's IP address or domain name in a web browser to verify that the StreamFlix application is running correctly.

## Contact

For any issues or further assistance, please contact [Your Name] at [bhumihrjee@gmail.com].

You can also connect with me on [LinkedIn](https://www.linkedin.com/in/bhumiharjee/).
```

### Summary:
- **Repository Link**: The repository is correctly referenced as `https://github.com/Bhumiharjee/Oriserve-Assignment-Streamflix`.
- **Methods**: Both Docker and non-Docker deployment methods are thoroughly detailed, with all necessary commands and steps.
- **Directories**: Proper paths are mentioned for configuration and deployment files.

Remember to replace placeholders like `[Your Name]` and `[your.email@example.com]` with your actual information.
