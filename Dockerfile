FROM phusion/baseimage:0.10.1

# parsec dependencies + sound + gpu (install_clean is a wrapper around apt-get)
RUN install_clean libcairo2 libfreetype6 libgdk-pixbuf2.0-0 libgl1-mesa-glx libgl1 libglib2.0-0 libgtk2.0-0 \ 
    libpango-1.0-0 libpangocairo-1.0-0 libsm6 libsndio6.1 libxxf86vm1 pulseaudio-utils libgl1-mesa-glx \
    libgl1-mesa-dri xserver-xorg-video-intel pulseaudio \
    i965-va-driver libva1 libva-x11-1 libva-glx1

# Parsec Client
RUN install_clean wget \
&&  wget "https://s3.amazonaws.com/parsec-build/package/parsec-linux.deb" -O parsec-linux.deb \ 
&&  dpkg -i parsec-linux.deb \
&&  rm parsec-linux.deb \
&&  apt-get remove -y wget

# add a parsec user
RUN groupadd --gid 1000 parsec \
&&  useradd --gid 1000 --uid 1000 -m parsec
USER parsec

CMD /usr/bin/parsecd
