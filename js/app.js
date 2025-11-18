// App Router & Navigation
class App {
    constructor() {
        this.currentPage = 'home';
        this.pageHistory = [];
        this.init();
    }

    init() {
        // Register Service Worker
        if ('serviceWorker' in navigator) {
            navigator.serviceWorker.register('/sw.js')
                .then(() => console.log('Service Worker registered'))
                .catch(err => console.log('SW registration failed:', err));
        }

        // Load initial page
        this.loadPage('home');

        // Handle back button
        window.addEventListener('popstate', (e) => {
            if (e.state && e.state.page) {
                this.loadPage(e.state.page, false);
            }
        });
    }

    async loadPage(pageName, addToHistory = true) {
        const container = document.getElementById('page-container');
        
        try {
            const response = await fetch(`pages/${pageName}.html`);
            const html = await response.text();
            
            // Slide animation
            container.innerHTML = html;
            
            if (addToHistory) {
                this.pageHistory.push(this.currentPage);
                history.pushState({ page: pageName }, '', `#${pageName}`);
            }
            
            this.currentPage = pageName;
            this.bindPageEvents();
            
        } catch (error) {
            console.error('Error loading page:', error);
            container.innerHTML = `<div class="page">
                <div class="page-header">
                    <h1 class="page-title">Lỗi</h1>
                </div>
                <div class="page-content">
                    <p>Không tìm thấy trang: ${pageName}</p>
                </div>
            </div>`;
        }
    }

    bindPageEvents() {
        // Back buttons
        document.querySelectorAll('.back-btn').forEach(btn => {
            btn.addEventListener('click', () => this.goBack());
        });

        // Navigation links
        document.querySelectorAll('[data-page]').forEach(link => {
            link.addEventListener('click', (e) => {
                e.preventDefault();
                const page = e.currentTarget.dataset.page;
                this.loadPage(page);
            });
        });
    }

    goBack() {
        if (this.pageHistory.length > 0) {
            const previousPage = this.pageHistory.pop();
            this.loadPage(previousPage, false);
            history.back();
        }
    }
}

// Initialize App
const app = new App();
