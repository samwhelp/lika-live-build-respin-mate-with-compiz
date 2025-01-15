#!/usr/bin/env bash




mod_compiz_desktop_install () {

	mkdir -p "${HOME}/.local/share/applications"

	install -Dm644 "./compiz.desktop" "${HOME}/.local/share/applications/compiz.desktop"

}


mod_compiz_desktop_install
