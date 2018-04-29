#!/bin/bash

rsync -avh /path/to/file/or/dir user@host:/path/to/dir/or/file
rsync -avh user@host:/path/to/dir/or/file /path/to/file/or/dir
