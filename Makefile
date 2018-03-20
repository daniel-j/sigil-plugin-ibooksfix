
.PHONO := zip dev watch

zip:
	zip -r iBooksFix-0.1.zip iBooksFix

dev:
	cp -r iBooksFix/ ~/.local/share/sigil-ebook/sigil/plugins/

watch:
	rm -rv ~/.local/share/sigil-ebook/sigil/plugins/iBooksFix/
	@while true; do \
		make --no-print-directory dev; \
		inotifywait -qre close_write iBooksFix; \
		sleep 0.5; \
	done
