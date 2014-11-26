FROM marcelmaatkamp/gnuradio-osmocom-libosmocore

MAINTAINER m.maatkamp@gmail.com version: 0.1

# ---
# libosmo-dsp

ADD AUTHORS /gnuradio/osmo-libosmo-dsp/
ADD configure.ac /gnuradio/osmo-libosmo-dsp/
ADD COPYING /gnuradio/osmo-libosmo-dsp/
ADD Doxyfile.in /gnuradio/osmo-libosmo-dsp/
ADD git-version-gen /gnuradio/osmo-libosmo-dsp/
ADD include /gnuradio/osmo-libosmo-dsp/include/
ADD libosmodsp.pc.in /gnuradio/osmo-libosmo-dsp/
ADD m4/ /gnuradio/osmo-libosmo-dsp/m4/
ADD Makefile.am /gnuradio/osmo-libosmo-dsp/
ADD src/ /gnuradio/osmo-libosmo-dsp/src/
   
RUN cd /gnuradio/osmo-libosmo-dsp && autoreconf -i -f && ./configure && make && make install && ldconfig

ENTRYPOINT      ["/bin/bash"]
