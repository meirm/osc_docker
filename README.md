# Running osCommerce in Docker Containers

## Introduction

This repository provides a Dockerized environment for running osCommerce, ensuring a consistent and scalable setup for your e-commerce platform. Leveraging Docker, we simplify the deployment of osCommerce with a focus on PHP, Apache, and MySQL.

## Prerequisites

- Docker and Docker Compose installed on your machine.
- Basic knowledge of Docker and container principles.

## Quick Start

1. **Clone this repository:**
   ```sh
   git clone https://github.com/meirm/osc_docker
   ```

2. **Prepare osCommerce package:**
   - Download the latest osCommerce package from [https://www.oscommerce.com/download-oscommerce](https://www.oscommerce.com/download-oscommerce).
   - Rename the downloaded file to `osc_install.zip` and place it in the root of the cloned repository.

3. **Build and run the Docker environment:**
   ```sh
   docker-compose up -d --build
   ```

4. **Accessing osCommerce:**
   - Visit [http://127.0.0.1](http://127.0.0.1) in your browser to start the osCommerce installation process.

5. **Database Configuration:**
   - Use the details from the `db` service in `docker-compose.yaml` to configure osCommerce's database connection.

6. **Admin Setup:**
   - Follow the osCommerce setup instructions to configure your store.

7. **Fix Captcha Bug:**
   - If encountering a Captcha error, set “Preferred use ReCaptcha” to True in the admin panel under Settings -> Configurations -> MyStore.

8. **Security:**
   - Remove the `/var/www/html/install` directory after installation for security reasons.

## Project Structure

```
.
├── Dockerfile
├── README.md
├── README.pdf
├── custom-php.ini (Optional PHP configuration)
├── db_data (Persistent MySQL data)
├── docker-compose.yaml
├── htdocs (Your osCommerce files)
└── osc_install.zip (osCommerce installation zip file)
```

## Conclusion

By containerizing osCommerce, we offer an easily deployable, scalable, and consistent environment for developing and producing your online store. Feel free to customize this setup to meet your specific needs.

## Author

Meir Michanie
