WeChat: cstutorcs
QQ: 749389476
Email: tutorcs@163.com
#!/bin/bash
RUNHASKELL=${RUNHASKELL:-runhaskell}
EXECUTABLE=${EXECUTABLE:-`cabal exec which tyinf`}
if test "$1" == "--no-color"; then
  $RUNHASKELL -cpp -DNOCOLOR -i./tests/driver ./tests/driver/Check.hs "$EXECUTABLE" "$2" "$3" "$4" "$5" "$6"
else
  $RUNHASKELL -cpp -i./tests/driver ./tests/driver/Check.hs "$EXECUTABLE" "$1" "$2" "$3" "$4" "$5" "$6"
fi
