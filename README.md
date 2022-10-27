# Scheduled Merge Action

## Usage

- create a workflow
  - eg `.github/workflows/scheduled_merge.yml`
  
```yml
# This is a basic workflow to help you get started with Actions

name: Scheduled Merge

# Controls when the workflow will run
on:
  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:

# A workflow run is made up of one or more jobs that can run sequentially or in parallel
jobs:
  # This workflow contains a single job called "build"
  build:
    # The type of runner that the job will run on
    runs-on: ubuntu-latest

    # Steps represent a sequence of tasks that will be executed as part of the job
    steps:
      # Checks-out your repository under $GITHUB_WORKSPACE, so your job can access it
      - uses: actions/checkout@v3

      - name: Scheduled Merge Action
        uses: robsdudeson/scheduled_merge_action@main
```

- run the action manually via the GitHub UI
- (coming soon) Example of running as cron
