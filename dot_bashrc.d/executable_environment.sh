# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:" ]]; then
    PATH="$HOME/.local/bin:$PATH"
fi
export PATH

if ! [[ "$LD_LIBRARY_PATH" =~ (^|:)"$HOME/.local/lib"(:|$) ]]; then
    LD_LIBRARY_PATH="$HOME/.local/lib:$LD_LIBRARY_PATH"
fi
export LD_LIBRARY_PATH

export EDITOR=hx
export WINE_DISABLE_FAST_SYNC=0
export PIPEWIRE_LATENCY=256/48000
