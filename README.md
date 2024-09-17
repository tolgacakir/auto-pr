[For Turkish version click here](README.tr.md)

# GitLab Merge Request Automation Script

This script allows you to automatically create a merge request between the source and target branches in GitLab projects. The script is designed to be run on Windows CMD and is quite easy to use.

## Requirements

Before running this script, you need to gather the following information and make the necessary updates to the script:

- **Access Token**: You need a personal access token to use the GitLab API.
- **Project ID**: You need to know the ID of the GitLab project where you will create the merge request.

## Steps

### 1. Find Access Token
Create a personal access token in GitLab. You can do this by following the steps below:

1. Log in to your GitLab account.
2. Click on your profile icon in the upper right corner and go to the **Settings** section.
3. Click on **Access Tokens** in the left menu.
4. Generate a token and add it to the `access_token` variable in the script.

```batch
set access_token=your_access_token
```

### 2. Find Project ID
To find the ID of your GitLab project, go to the project’s main page. You can find the Project ID in the **Settings** -> **General** section.

Add this ID to the `project_id` variable in the script:
```batch
set project_id=glpat_your_project_id
```

### 3. Open CMD in the Script Directory
Open a CMD terminal in the directory where the script file is located.

### 4. Example Usage
You can run the script with the following command:
```batch
mr.bat -s your-source-branch -t your-target-branch
```

- `-s`: Specify the source branch name.
- `-t`: Specify the target branch name.

For example:
```batch
mr.bat -s feature-branch -t main
```
This command will create a merge request from `feature-branch` to the `main` branch.

### 5. Output
When the script runs successfully, you will see the following message:
```
Successful
```

If an error occurs:
```
Failed
```

### Notes
- The script uses the GitLab API and requires your personal access token (`access_token`).
- The script is designed to be run from a CMD terminal.

License
This project is licensed under the MIT License. For more information, refer to the `LICENSE` file.
