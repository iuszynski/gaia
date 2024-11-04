if [ ! -e "$CONDA_PREFIX/share/rubygems/bin/ruby" ]; then
    mkdir -p "$CONDA_PREFIX/share/rubygems/bin"
    ln -s "$CONDA_PREFIX/bin/ruby" "$CONDA_PREFIX/share/rubygems/bin/ruby"
fi

if [ ! -e "$CONDA_PREFIX/share/rubygems/bin/bundler" ]; then
    gem install jekyll bundler csv base64
fi

if [ ! -e "$PIXI_PROJECT_ROOT/Gemfile" ]; then
    cd "$PIXI_PROJECT_ROOT"
    bundle init
    bundle add jekyll webrick
    bundle install
fi
