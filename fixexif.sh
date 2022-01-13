#!/bin/bash
exiftool -q -overwrite_original '-CreateDate<FileModifyDate' $1
