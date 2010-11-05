# System-wide .profile for sh(1)
≈y
if [ -x /usr/libexec/path_helper ]; then
	eval `/usr/libexec/path_helper -s`
fi

if [ "${BASH-no}" != "no" ]; then
	[ -r /etc/bashrc ] && . /etc/bashrc
fi

export DRQUEUE_ROOT=/Volumes/Data/manure_pile/drqueue
export DRQUEUE_MASTER=127.0.0.1
export DRQUEUE_PATH=$PATH:$DRQUEUE_ROOT/bin
export MAYA_LOCATION=/Applications/Autodesk/maya2010/Maya.app/Contents
export PATH=$PATH:$DRQUEUE_ROOT/bin
export PATH=$PATH:/Applications/Autodesk/maya2010/Maya.app/Contents/bin
export DRQUEUE_LOGS=$DRQUEUE_ROOT/logs
export DRQUEUE_TMP=$DRQUEUE_ROOT/tmp
