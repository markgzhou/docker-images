for PYTHON_VERSION in  "3.7.10" "3.8.8" "3.9.2"; do
	echo "Installing Python $PYTHON_VERSIONS"
	wget -O /tmp/Python-$PYTHON_VERSION.tgz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tgz"
	mkdir -p /usr/share/python/$PYTHON_VERSION /tmp/python/$PYTHON_VERSION
	tar -xzC /tmp/python/ -f /tmp/Python-$PYTHON_VERSION.tgz
	cd /tmp/python/Python-$PYTHON_VERSION
	./configure --prefix=/usr/share/python/$PYTHON_VERSION
	make && make install
	/usr/share/python/$PYTHON_VERSION/bin/python3 -m pip install -U pip
done

rm -rf /tmp/python
