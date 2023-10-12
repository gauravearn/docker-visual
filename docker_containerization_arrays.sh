#!/usr/bin/env bash
# -*- coding:  utf-8 -*-
# Author: Gaurav Sablok
# date: 2023-10-12
# MIT License
$ docker image ls >> docker_images.txt
$let docker_image = []
$open docker_images.txt | lines | split column "  " | get column1 | str trim | sort | each { |each| $"Docker repository running, ($each)!" } 
$open docker_images.txt | lines | split column "  " | get column1 | str trim | sort | each { |each| ($docker_image | prepend ($each)) }
