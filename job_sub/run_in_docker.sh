#!/bin/bash
docker run --name access \
  -v "/home/dijkstra/Documents/GitHubRepos/COVID-19AccessibilityNotebook/job_sub/app_vars.py":"/myapp/app_vars.py" \
  -v "/home/dijkstra/Documents/GitHubRepos/COVID-19AccessibilityNotebook/Data":"/myapp/Data" \
  -v "/home/dijkstra/Documents/GitHubRepos/COVID-19AccessibilityNotebook/job_sub/results":"/myapp/results" \
  alexandermichels/spatialaccessjob:0.0.1
