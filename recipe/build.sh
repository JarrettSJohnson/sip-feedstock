set -exou

if [[ "${target_platform}" == "osx-arm64" ]]; then
    export CFLAGS="$CFLAGS -arch x86_64 -arch arm64"
    export CXXFLAGS="$CXXFLAGS -arch x86_64 -arch arm64"
    export LDFLAGS="$LDFLAGS -arch x86_64 -arch arm64"
fi

$PYTHON -m pip install . -vv
