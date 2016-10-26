#!/bin/bash
python compile.py -r iss/
zip --quiet iss-dl iss/*.pyc iss/*/*.pyc
zip --quiet --junk-paths iss-dl __main__.py
echo '#!/usr/bin/env python' > iss-dl
cat iss-dl.zip >> iss-dl
rm iss-dl.zip
chmod a+x iss-dl