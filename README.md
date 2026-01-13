# Alveole

Librairie CSS/SCSS modulaire et versionnée pour vos projets.

## Installation

### Via npm

```bash
npm install alveole
```

### Via CDN

```html
<!-- Version non-minifiée -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/alveole@latest/dist/alveole.css">

<!-- Version minifiée (recommandée) -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/alveole@latest/dist/alveole.min.css">
```

## Utilisation

### Import complet

```scss
@import 'alveole';
```

### Import modulaire

```scss
// Variables uniquement
@use 'alveole/src/variables';

// Tokens uniquement (couleurs et typographie)
@use 'alveole/src/variables/tokens';

// Couleurs uniquement
@use 'alveole/src/variables/tokens/colors';

// Typographie uniquement
@use 'alveole/src/variables/tokens/typographie';

// Composants uniquement
@use 'alveole/src/components';

// Classes utilitaires uniquement
@use 'alveole/src/classes';
```

## Structure

```
src/
├── components/          # Composants SCSS
├── classes/             # Classes utilitaires
├── variables/
│   └── tokens/          # Tokens de design
│       ├── _colors.scss     # Variables de couleurs
│       ├── _typographie.scss # Variables de typographie
│       └── _index.scss      # Index des tokens
│   └── _index.scss      # Point d'entrée des variables
└── _index.scss          # Point d'entrée principal
```

## Variables

### Couleurs

Les couleurs sont disponibles en variables SCSS et en CSS custom properties. La librairie inclut plusieurs palettes de couleurs :

- **Monza** : Palette rouge (50 à 950)
- **Mariner** : Palette bleue (50 à 950)
- **Watusi** : Palette orange/rouge (50 à 950)
- **Slate Gray** : Palette de gris (50 à 1000)
- **Mountain Meadow** : Palette verte (50 à 950)
- **Sunshade** : Palette jaune/orange (50 à 950)
- **White** : Blanc

#### Exemples d'utilisation

```scss
// Variables SCSS
.my-element {
  color: $monza-500;
  background-color: $slate-gray-100;
  border-color: $mariner-600;
}
```

```css
/* CSS Custom Properties */
.my-element {
  color: var(--monza-500);
  background-color: var(--slate-gray-100);
  border-color: var(--mariner-600);
}
```

### Typographie

La typographie inclut des tailles de police et des line-heights pour desktop et mobile, organisées en plusieurs catégories :

- **Titres alternatifs** : XL, LG, MD, SM, XS (desktop et mobile)
- **Titres** : XL, LG, MD, SM, XS, XSS (desktop et mobile)
- **Corps de texte** : XL, LG, MD, SM, XS avec variantes (regular, bold, medium, italique)
- **Corps de texte alternatifs** : Texte article, Texte standard, Texte détail, Texte mention

Les font families disponibles :
- `font-family-text` : Pour le texte (Inter + fallback)
- `font-family-title` : Pour les titres (Inter + fallback)
- `font-family-fallback` : Fallback système

#### Exemples d'utilisation

```scss
// Variables SCSS
.heading {
  font-family: $font-family-title;
  font-size: $fontsize-titres-xl-desktop;
  line-height: $line-height-titres-xl-desktop;
  font-weight: $font-weight-bold;
}

.body-text {
  font-family: $font-family-text;
  font-size: $fontsize-corps-de-texte-md-regular;
  line-height: $line-height-corps-de-texte-md-regular;
}
```

```css
/* CSS Custom Properties */
.heading {
  font-family: var(--font-family-title);
  font-size: var(--fontsize-Titres-XL-desktop);
  line-height: var(--Line-Height-Titres-XL-desktop);
  font-weight: var(--Font-Weight-bold);
}

.body-text {
  font-family: var(--font-family-text);
  font-size: var(--fontsize-Corps-de-texte-MD--regular);
  line-height: var(--Line-Height-Corps-de-texte-MD--regular);
}
```

### Tokens

Les tokens de design incluent :
- **Couleurs** : Variables SCSS (`$monza-500`, `$mariner-600`, etc.) et CSS custom properties (`--monza-500`, `--mariner-600`, etc.)
- **Typographie** : Tailles de police, line-heights et font-weights pour desktop et mobile

## Développement

### Installation des dépendances

```bash
npm install
```

### Build

```bash
npm run build
```

Génère les fichiers CSS dans le dossier `dist/` :
- `alveole.css` (version non-minifiée)
- `alveole.min.css` (version minifiée)

### Watch mode

```bash
npm run watch
```

## Publication

### Versioning

La librairie utilise le versioning sémantique (semver) :

```bash
# Version patch (1.0.0 -> 1.0.1)
npm version patch

# Version minor (1.0.0 -> 1.1.0)
npm version minor

# Version major (1.0.0 -> 2.0.0)
npm version major
```

### Publication sur npm

```bash
npm publish
```

Le script `prepublishOnly` compile automatiquement les fichiers SCSS avant la publication.

### Accès via CDN

Une fois publiée sur npm, la librairie est accessible via jsDelivr :

```
https://cdn.jsdelivr.net/npm/alveole@<version>/dist/alveole.min.css
```

## Licence

MIT
