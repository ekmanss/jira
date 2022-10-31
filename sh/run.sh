#!/bin/bash

docker run --name my_jira --detach --publish 8080:8080 37976120/jira
