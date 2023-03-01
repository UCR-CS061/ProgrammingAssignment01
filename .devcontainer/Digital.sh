#!/bin/bash
DIR="$( cd "$( dirname "$( realpath "${BASH_SOURCE[0]}" )" )" >/dev/null && pwd )"
JAVA_TOOL_OPTIONS="-Dsun.java2d.xrender=false" java -jar "$DIR/Digital.jar" "$1"
