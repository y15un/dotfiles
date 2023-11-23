--- .bashrc
+++ .bashrc
@@ -11,3 +11,8 @@
 # ridden in every subshell.

 test -s ~/.alias && . ~/.alias || true
+
+# y15un: enable SSH auth with GPG
+export GPG_TTY=`tty`
+export SSH_AUTH_SOCK=`gpgconf --list-dirs agent-ssh-socket`
+gpg-connect-agent updatestartuptty /bye > /dev/null
