rm roboto.css *.ttf
wget 'https://fonts.googleapis.com/css?family=Roboto+Mono:400,700|Roboto:400,300,300italic,400italic,500,500italic,700,700italic' -O roboto.css
for i in `cat roboto.css | perl -p -e 's/.*url\((.*?)\).*/\1/' | grep gstatic`; do wget $i; done
perl -p -i -e 's/url\(https:\/\/fonts.gstatic.com\/s\/roboto(?:mono)?\/v[0-9]*\/(.*?)\)/url\(\1\)/' roboto.css
