# Rian Arceo – Folk Artist Portfolio

This repository now hosts a **pure static website** (no Hugo) that showcases Rian Arceo's work as a folk artist, musician, and songwriter. The site is built from scratch using vanilla HTML, CSS, and lightweight JavaScript.

## Structure

```
├── index.html            # Single-page layout
├── assets
│   ├── css/style.css     # Custom styling
│   ├── js/main.js        # Small helper script (active nav + year)
│   └── images/           # Optimized assets (background + avatar)
└── .github/workflows     # GitHub Pages deployment workflow
```

## Local Development

1. Clone the repository.
2. Open `index.html` in your browser (double-click or use `npx serve`).

No build tools or package managers are required.

## Deployment

GitHub Actions automatically publishes the contents of `main` to GitHub Pages whenever you push (see `.github/workflows/deploy.yml`). If you prefer not to use Actions, disable the workflow and set GitHub Pages to serve directly from the `main` branch.

## Customizing Content

- Update hero details, portfolio items, and services inside `index.html`.
- Adjust visual styles in `assets/css/style.css`.
- Replace the hero image and background texture in `assets/images/`.

## License

The template is released under the MIT License. See `LICENSE.md` for details.
