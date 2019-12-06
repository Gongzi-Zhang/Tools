#!/bin/bash

# check validity of email address
nsloopup -q=MX evernote.com
telnet aspmx.l.google.com 25 <<END
helo hi
mail from: <test@example.com>
rcpt to: <ian@evernote.com>
rcpt to: <non-exist@evernote.com>
END
