# eTax Mobile Clone

A modern Progressive Web App (PWA) that replicates the eTax mobile application with responsive design and offline capabilities.

## Features

- 📱 **Mobile-First Design**: Optimized for mobile devices with responsive layout
- 🔄 **PWA Support**: Install as native app with offline functionality
- 📄 **Multiple Pages**: Home, Login, Invoice, Profile, and Template pages
- 🎨 **Modern UI**: Clean, professional interface with smooth animations
- 📊 **Mock Data**: Complete demonstration with realistic eTax data
- 🛡️ **Safe Area**: Optimized for devices with notches and home indicators
- 📦 **Lightweight**: Fast loading with optimized assets

## Technology Stack

- **Frontend**: HTML5, CSS3, JavaScript (ES6+)
- **PWA**: Service Worker, Web App Manifest
- **Styling**: Custom CSS with responsive design
- **Icons**: SVG icons for scalability
- **Data**: JSON-based mock data structure

## Quick Start

1. **Clone the repository**:
   ```bash
   git clone https://github.com/mrkent19999x/Etax-clone.git
   cd Etax-clone
   ```

2. **Open in browser**:
   - Simply open `index.html` in any modern web browser
   - Or serve with a local HTTP server:
     ```bash
     python -m http.server 8000
     # or
     npx serve .
     ```

3. **Install as PWA** (optional):
   - Open in Chrome/Edge
   - Click "Add to Home Screen" when prompted
   - App will install like a native mobile app

## Project Structure

```
etax-clean/
├── index.html          # Main entry point
├── manifest.json       # PWA manifest
├── sw.js              # Service worker
├── pages/             # HTML pages
│   ├── home.html
│   ├── login.html
│   ├── invoice.html
│   ├── profile.html
│   └── _template.html
├── css/               # Stylesheets
│   ├── base.css
│   └── pages.css
├── js/                # JavaScript files
│   ├── app.js
│   └── mock-data.js
└── assets/            # Static assets
    ├── icons/
    ├── images/
    └── screenshots/
```

## Development

### Available Scripts

- `app.js`: Main application logic
- `mock-data.js`: Sample eTax data for demonstration
- `base.css`: Core styling and layout
- `pages.css`: Page-specific styles

### Customization

1. **Modify Mock Data**: Edit `js/mock-data.js` to update sample data
2. **Change Styling**: Update CSS files in `css/` directory
3. **Add Pages**: Create new HTML files in `pages/` directory
4. **Update Manifest**: Modify `manifest.json` for PWA settings

## PWA Features

- **Offline Support**: Works without internet connection
- **App-like Experience**: Full-screen mode, no browser UI
- **Background Sync**: Data updates when connection restored
- **Push Notifications**: Ready for notification implementation
- **Add to Home Screen**: Native app installation

## Browser Support

- Chrome 40+
- Firefox 41+
- Safari 11.1+
- Edge 17+
- Mobile browsers (iOS Safari, Chrome Mobile)

## Contributing

1. Fork the repository
2. Create feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to branch (`git push origin feature/AmazingFeature`)
5. Open Pull Request

## License

This project is open source and available under the MIT License.

## Author

**MiniMax Agent**

---

*This is a demonstration project for educational purposes. All eTax logos and branding are property of their respective owners.*