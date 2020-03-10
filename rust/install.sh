# #!/bin/sh
# #
# # rust
# #


if test ! $(which rustup-init)
then
  echo "  Installing rust for you."
  rustup-init -y

fi

exit 0
