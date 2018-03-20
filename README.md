# iBooksFix Output Sigil Plugin

This output plugin fixes the xhtml toc in EPUB3 ebooks for iBooks. Sigil stores the xhtml toc in the Text folder, but iBooks has a bug which fails to render the built in toc correctly. The solution this plugin provides is to move the xhtml toc to the OEBPS directory and rewrite all hrefs to it and rewrite hrefs/srcs in it.

When you run the plugin, it asks where you want to save the converted EPUB.

Build (zip) the plugin by running `make`.
