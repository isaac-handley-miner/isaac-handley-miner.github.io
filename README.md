# Personal Academic Website

A clean, single-page academic website built with plain HTML and CSS. Hosted on GitHub Pages.

## Updating Content

Edit `index.html` to update your bio and `publications.html` to update publications (it has a copy-paste template for new entries).

## Updating the CV

The CV source is `cv/cv.typ`, written in [Typst](https://typst.app). The website links to the compiled `assets/cv.pdf`.

1. Edit `cv/cv.typ`. Entries follow simple patterns (`#entry[2026][...]` for dated items, `#ref[...]` for references), and the "Updated" date is set near the top.
2. Rebuild the PDF from the repository root:

   ```bash
   typst compile --font-path cv/fonts cv/cv.typ assets/cv.pdf
   ```

   Install Typst with `brew install typst`. Or, with no install, upload `cv/cv.typ` and the `cv/fonts` folder to a project on [typst.app](https://typst.app), download the PDF, and save it as `assets/cv.pdf`.
3. Commit both `cv/cv.typ` and `assets/cv.pdf`.

## Deploying Changes

```bash
git add .
git commit -m "Describe your change"
git push
```

The site updates automatically within a couple of minutes.
