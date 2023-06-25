Certainly! Here's an updated version of the README with a section on testing using the `test.sh` script:

# Ansible

This project aims to streamline the installation and configuration of software, making it easier to recreate a consistent and personalized environment.

## Table of Contents

- [Overview](#overview)
- [Directory Structure](#directory-structure)
- [Usage](#usage)
- [Testing](#testing)

## Directory Structure

The project follows the following directory structure:

```
ansible/
├── .github/
│   └── workflows/
│       └── daily_run.yml
├── .ssh/
│   └── <encrypted .ssh keys>
├── tasks/
│   └── <ansible tasks for software installation>
├── Dockerfile
├── install.sh
├── playbook.yml
└── test.sh
```

- `.github`: Contains GitHub Actions workflow file for daily execution of the Ansible playbook.
- `.ssh`: Stores the encrypted `.ssh` keys securely.
- `tasks`: Contains Ansible tasks for installing and configuring software on the target system.
- `Dockerfile`: Defines the Docker image configuration for testing the Ansible setup.
- `install.sh`: Additional setup or installation script for the project.
- `playbook.yml`: Main Ansible playbook file that includes the tasks defined in the `tasks` directory.
- `test.sh`: Script for building and starting the Docker container for testing the Ansible setup.

## Usage

You can set up your personal computer using one of the following methods:

### Option 1: Run Install Script Directly

This option allows you to run the `install.sh` script directly without cloning the repository. The script can be fetched from the GitHub repository using raw GitHub content and piped into bash for execution. Follow these steps:

1. Open your terminal and run the following command:

   ```bash
   curl -sL https://raw.githubusercontent.com/your-username/your-repo/main/install.sh | bash
   ```

   Make sure to replace `your-username` and `your-repo` with your actual GitHub username and repository name.

2. The `install.sh` script will be downloaded and executed, which will trigger the setup process based on your Ansible tasks.

### Option 2: Clone the Repository and Run the Install Script

This option allows you to clone the repository and then run the `install.sh` script. Follow these steps:

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/your-username/your-repo.git
   ```

   Make sure to replace `your-username` and `your-repo` with your actual GitHub username and repository name.

2. Change to the cloned repository directory:

   ```bash
   cd your-repo
   ```

3. Run the `install.sh` script:

   ```bash
   ./install.sh
   ```

   The script will execute the setup process based on your Ansible tasks.

## Testing

To test the Ansible setup using Docker, you can utilize the provided `test.sh` script. This script builds a Docker image based on the `Dockerfile` and starts a container to run the Ansible playbook. Follow these steps:

1. Make sure Docker is installed on your system.

2. Open your terminal and navigate to

 the project directory.

3. Run the `test.sh` script:

   ```bash
   ./test.sh
   ```

   This will build the Docker image and start a container to run the Ansible playbook.

   Note: The Docker image name and container name can be customized in the `test.sh` script.

4. Observe the output to verify if the Ansible playbook ran successfully inside the Docker container.


