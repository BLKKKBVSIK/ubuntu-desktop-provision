// Package consts defines the constants used by the project
package consts

import log "github.com/sirupsen/logrus"

var (
	// Version is the version of the executable.
	Version = "Dev"
)

const (
	// TEXTDOMAIN is the gettext domain for l10n.
	TEXTDOMAIN = "provsrv"

	// DefaultLogLevel is the default logging level selected without any option.
	DefaultLogLevel = log.WarnLevel

	// DefaultSocketPath is the default socket path.
	DefaultSocketPath = "/run/provsrv.sock"
)
