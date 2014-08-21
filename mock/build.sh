#!/bin/bash
protoc --ruby_out=lib -I definitions definitions/otmp/*.proto
