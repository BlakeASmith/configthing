function isMac() {
  	test $(uname) = "Darwin";
}

function isLinux() {
	test $(uname) = "Linux";
}

export CONFIGTHING_ROOT=$(pwd)

