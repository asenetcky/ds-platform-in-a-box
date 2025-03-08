#!/bin/bash

# Use 1password cli to create a .env file from a template
# and inject secrets into it
op inject -i env.tmpl -o .env

#TODO setup a 1password service account
