if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  /home/$USER/.local/bin/wrappedhl
fi
