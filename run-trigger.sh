#!/bin/bash

#workflow="deployment"
workflow="build"
gh workflow run ".github/workflows/${workflow}.yaml"
sleep 10
gh run list --workflow="${workflow}.yaml"
