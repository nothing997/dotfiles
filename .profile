# $FreeBSD: releng/12.1/share/skel/dot.profile 337497 2018-08-08 19:24:20Z asomers $
#
# .profile - Bourne Shell startup script for login shells
#
# see also sh(1), environ(7).
#

# These are normally set through /etc/login.conf.  You may override them here
# if wanted.
# PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$HOME/bin; export PATH
# BLOCKSIZE=K;	export BLOCKSIZE

# Setting TERM is normally done through /etc/ttys.  Do only override
# if you're sure that you'll never log in via telnet or xterm or a
# serial line.

EDITOR=vim;   	                export EDITOR
PAGER=less;  	                export PAGER

LANG=en_US.UTF-8;               export LANG
MM_CHARSET=UTF-8;               export MM_CHARSET

# set ENV to a file invoked each time sh is started for interactive use.
ENV=$HOME/.zshrc;               export ENV

# Query terminal size; useful for serial lines.
if [ -x /usr/bin/resizewin ] ; then /usr/bin/resizewin -z ; fi

# Display a random cookie on each login.
if [ -x /usr/bin/fortune ] ; then /usr/bin/fortune freebsd-tips ; fi

#export SSH_AUTH_SOCK

# For Qt5 environment
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_SCREEN_SCALE_FACTORS=1
export QT_SCALE_FACTOR=1

# PATH: GO
export PATH=$PATH:/usr/local/go/bin

# PATH: RBENV
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# PATH: NPM
PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix="$HOME/.node_modules"

# PATH: PERL5
PATH="$HOME/.config/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="$HOME/.config/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="$HOME/.config/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"$HOME/.config/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=$HOME/.config/perl5"; export PERL_MM_OPT;

# PATH: local /bin
PATH="$HOME/bin:$HOME/src:$HOME/.local/bin:$PATH"
export PATH

# For smooth the font for some Java apps
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=gasp -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

