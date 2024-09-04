```markdown
# Oriserve Assignment: Streamflix

Welcome to the Streamflix project! 🎬 Streamflix is an innovative streaming application designed to deliver a seamless and engaging media experience. This README provides you with all the information needed to get started with both Docker and non-Docker methods for deploying the project.

## Table of Contents

- [Project Overview](#project-overview)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
  - [Non-Docker Method](#non-docker-method)
  - [Docker Method](#docker-method)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Project Overview

Streamflix is a cutting-edge streaming service that allows users to explore, watch, and enjoy a vast collection of media content. With a modern architecture and user-friendly interface, Streamflix aims to provide an exceptional viewing experience.

## Prerequisites

Before you begin, ensure you have the following installed:

- **Node.js** (v14 or higher)
- **Docker** (for Docker deployment)
- **Git**

## Installation

### Non-Docker Method

1. **Clone the Repository**

   ```bash
   git clone https://github.com/Bhumiharjee/Oriserve-Assignment-Streamflix.git
   cd Oriserve-Assignment-Streamflix
   ```

2. **Install Dependencies**

   ```bash
   npm install
   ```

3. **Configure Environment Variables**

   Create a `.env` file in the root directory and add the following environment variables:

   ```bash
   DATABASE_URL=<your-database-url>
   PORT=80
   ```

4. **Run the Application**

   ```bash
   npm start
   ```

   The application will be accessible at `http://localhost:80`.

### Docker Method

1. **Clone the Repository**

   ```bash
   git clone https://github.com/Bhumiharjee/Oriserve-Assignment-Streamflix.git
   cd Oriserve-Assignment-Streamflix
   ```

2. **Build the Docker Image**

   ```bash
   docker build -t streamflix .
   ```

3. **Run the Docker Container**

   ```bash
   docker run -p 80:80 --env-file .env streamflix
   ```

   The application will be accessible at `http://localhost:80`.

## Usage

After deployment, navigate to `http://localhost:80` to access the Streamflix application. Explore the media library, manage your account, and enjoy your favorite shows and movies!

## Contributing

We welcome contributions to the Streamflix project! If you have suggestions, improvements, or bug fixes, please submit a pull request or open an issue. For detailed contribution guidelines, refer to [CONTRIBUTING.md](CONTRIBUTING.md).

## License

This project is licensed under the [MIT License](LICENSE).

```
