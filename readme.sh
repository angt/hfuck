s() {
	( echo "$ $*" | fold -s -w 70 | sed '$ ! s/$/\\/'; "$@" ) | sed 's/^/    /'
}

rm -f h

cat <<EOF
# hfuck
h version of brainfuck

Build it

$(s make h)

Mandatory helloworld:

$(s ./h hhh hhh hhhh hhh hhhh hhhh h hhhhhhh h hhhhhhh hhhh h hh hhh hhh \
	hhh hh hhh hh hhh hh hhh hhhh hhhh hhhh hhhhhhhh hh hhhhhhhh hhhh \
	hhhh hhh hhh hhhhh hhhh h h h h h h hhhhh hhhh hhhh hhh hhhhh hhhhh \
	hhhh hhhh hhhhh hhhh h hhhhh hh hh hhhhh hh hh hhhhh hhhh hhhh hhhh \
	hhhhh h h h hhhhh hh hh hhhhh hh hh hhh hhhhh hhhh hhhh hhhh h hhhhh)

Word count:

$(s ./h hh hh hh h hh hh hh hh hh h hh hh h hh hh h hhhhhhh hhhh hhhh \
	hhhhhhhh hhhhhh hhhhhhh hhh hhhhhhh hhh hhhhhhh hhh hhhhhhh hhh \
	hhhhhhh hhh hhhhhhh hhh hhhhhhh hhh hhhhhhh hhh hhhhhhh hhhh h hh hhh \
	hhhhhhh hh h hhhh hhh hhhhhhh hh hhh hhhh hhh hhhhhhh hhh hhhhhhh hhh \
	hhhhhhh hhhh h h hhhhhhh hhhh h h h h h h hh hhh hhhhhhhh hhhh \
	hhhhhhh hh hh hhhhhhh hhh hhhh hhhhhhhh hhhh hhhhhhh hh hhhhhhhh hhhh \
	hhh hhhhhhhh hh hh hhhhhhh hhhh h hh hhh hhhhhhh hhhh hhh hh hhhhhhh \
	hhh hhhhhhhh hhhhhhhh hhhhhhhh hhhhhhhh hhhhhhhh hhhhhhhh hhhhhhhh \
	hhhhhhhh hhhhhhhh hhhhhhhh hhhhhhhh hhhhhhhh hhhhhhhh hhhhhhhh \
	hhhhhhhh hhhhhhhh hhhh hhhhhhh hhh hhhh hhhh hhhhhhh hhh hhhhhhhh h \
	hh hhhhhhhh hhhh hhhh hhhhhhh hh hh hh hh hh hh h hhhh hhhh hhhh hhhh \
	hhhh hhhh hhh hhhhhhhh hh hhhhhhh hh hhhhhhhh hh hh hh hh hh hh hh h \
	hh hhhhhhh hhhh h hhhhhhh hh h h h h h h h h h hhhh hhh hhhhhhh hh \
	hhh hhhh hhh hhhhhhhh h h hh hhhhhhh hhhh h h h h h h h hh hhh \
	hhhhhhh hhhh hhh hh hhh hhhhhhhh h hhhhhhh h hh hh hh hh hh hh \
	hhhhhhhh hhhhhhhh hhhh hhhhhhh hh h hhhh hhh hhhhhhhh hh hhhhhhh hh \
	hh hh hh hh h h hh hhhhhhh hhh hhhhhhhh hhhhhhhh h hhhh hhhhhhhh hh \
	hhhhhhh hhh hhhh hhhh hhhh hhhh hhhh hhhh hhhhhhhh hh hh hh hh \
	hhhhhhhh hhhhhh hhhhhhhh h hhhh h h hh hh hh hhhhhhh hhhhhhh h h h h \
	h hh hh hh hh hh hh hhhhhhhh hhhh h hh h hhhhhhh hhhhhhh hhhh h h h h \
	h h h h hh hhh hhhhhhhh hhhh hhhhh hhhh hhhh hhhh hhhh hhhh hhhhhhhh \
	hh hh hh hh hh hh hh hh hhhhhhhh < h.c)
EOF
