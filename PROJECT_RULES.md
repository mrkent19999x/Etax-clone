# 📋 PROJECT RULES & STANDARDS

## eTax Mobile Clone - Quy chuẩn dự án

---

## 🎯 MỤC TIÊU DỰ ÁN

Clone chính xác 100% giao diện eTax Mobile App:
- **Pixel-perfect layout** từ screenshots
- **Native-like experience** (PWA)
- **No backend** - chỉ frontend + mock data
- **10-20 trang** tương ứng với screenshots

---

## 🏗️ KIẾN TRÚC KỸ THUẬT

### Tech Stack (KHÔNG THAY ĐỔI)
```
Frontend: HTML5 + CSS3 + Vanilla JavaScript
PWA: manifest.json + Service Worker
Mock: JSON data trong js/mock-data.js
Assets: WebP format (optimized)
```

### Cấu trúc thư mục (CỐ ĐỊNH)
```
etax-mobile-clone/
├── index.html              # Entry point - KHÔNG SỬA
├── manifest.json           # PWA config
├── sw.js                   # Service Worker
├── pages/                  # MỖI SCREENSHOT = 1 FILE
│   ├── _template.html      # Template để copy
│   ├── home.html
│   ├── login.html
│   └── [tên-màn-hình].html
├── assets/
│   ├── screenshots/        # Screenshots gốc (reference)
│   ├── icons/             # Icons WebP
│   └── images/            # Backgrounds, logos
├── css/
│   ├── base.css           # Base styles - HẠN CHẾ SỬA
│   └── pages.css          # Custom styles - SỬA Ở ĐÂY
├── js/
│   ├── app.js             # Router - HẠN CHẾ SỬA
│   └── mock-data.js       # Mock data - CẬP NHẬT THƯỜNG XUYÊN
├── AGENT.md               # Agent context
├── PROJECT_RULES.md       # File này
└── README.md              # Documentation
```

---

## 📐 QUY CHUẨN ĐO ĐẠC (PIXEL-PERFECT)

### 1. Layout Measurements

Khi analyze screenshot, ĐO ĐẠC theo thứ tự:

#### A. Header (Top Bar)
```css
/* Đo chính xác */
height: ?px                    /* Chiều cao header */
padding: ?px ?px              /* Top/Bottom & Left/Right */
background-color: #??????     /* Exact color */
```

Ví dụ thực tế eTax:
```css
.page-header {
    height: 56px;
    padding: 12px 16px;
    background: #1976D2;  /* Material Blue 700 */
}
```

#### B. Safe Area (cho notch/island)
```css
/* iPhone notch/island */
padding-top: env(safe-area-inset-top);
padding-bottom: env(safe-area-inset-bottom);
```

#### C. Content Area
```css
/* Đo margins, paddings */
.page-content {
    padding: ?px;          /* Đo từ screenshot */
    margin-bottom: ?px;    /* Nếu có bottom nav */
}
```

#### D. Bottom Navigation
```css
.bottom-nav {
    height: ?px;
    padding: ?px 0;
    padding-bottom: calc(?px + env(safe-area-inset-bottom));
}
```

#### E. Components (Cards, Lists, Buttons)
```css
/* Card spacing */
.card {
    padding: ?px;
    margin-bottom: ?px;
    border-radius: ?px;
}

/* Button dimensions */
.button {
    height: ?px;
    padding: ?px ?px;
    font-size: ?px;
}
```

### 2. Typography Scale

Đo chính xác font-size từ screenshots:

```css
/* Hierarchy thường gặp */
.title-large: 24px;      /* Titles chính */
.title-medium: 20px;     /* Sub titles */
.title-small: 18px;      /* Section headers */
.body-large: 16px;       /* Body text */
.body-medium: 14px;      /* Secondary text */
.body-small: 12px;       /* Captions, labels */

/* Font weights */
font-weight: 400;  /* Regular */
font-weight: 500;  /* Medium */
font-weight: 600;  /* Semibold */
font-weight: 700;  /* Bold */
```

### 3. Color Palette

Dùng color picker để extract EXACT colors:

```css
/* eTax typical colors (example) */
--primary: #1976D2;       /* Blue */
--primary-dark: #1565C0;
--primary-light: #42A5F5;
--accent: #FF9800;        /* Orange */
--success: #4CAF50;       /* Green */
--error: #F44336;         /* Red */
--text-primary: #212121;
--text-secondary: #757575;
--border: #E0E0E0;
--background: #F5F5F5;
```

### 4. Spacing System

Dùng hệ thống spacing 4px/8px:

```css
/* Base unit: 4px hoặc 8px */
--space-1: 4px;
--space-2: 8px;
--space-3: 12px;
--space-4: 16px;
--space-5: 20px;
--space-6: 24px;
--space-8: 32px;

/* Apply */
padding: var(--space-4);  /* 16px */
gap: var(--space-3);      /* 12px */
```

---

## 🎨 CSS CODING STANDARDS

### Naming Convention: BEM (khuyến khích)

```css
/* Block */
.invoice-card { }

/* Element */
.invoice-card__header { }
.invoice-card__body { }
.invoice-card__footer { }

/* Modifier */
.invoice-card--highlighted { }
.invoice-card--disabled { }
```

### CSS Organization

```css
/* 1. Layout */
.component {
    display: flex;
    position: relative;
    width: 100%;
}

/* 2. Spacing */
.component {
    padding: 16px;
    margin-bottom: 12px;
    gap: 8px;
}

/* 3. Typography */
.component {
    font-size: 16px;
    font-weight: 500;
    line-height: 1.5;
}

/* 4. Visual */
.component {
    background: #fff;
    border: 1px solid #e0e0e0;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
}

/* 5. Animation */
.component {
    transition: all 0.3s ease;
}
```

---

## 📱 MOBILE-FIRST REQUIREMENTS

### Viewport Configuration (ĐÃ CÓ TRONG index.html)
```html
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, viewport-fit=cover">
```

### Disable Behaviors
```css
/* Disable text selection (optional) */
-webkit-user-select: none;
user-select: none;

/* Disable tap highlight */
-webkit-tap-highlight-color: transparent;

/* Smooth scroll */
-webkit-overflow-scrolling: touch;

/* Prevent pull-to-refresh */
overscroll-behavior-y: contain;
```

### Touch Targets (QUAN TRỌNG)
```css
/* Minimum touch target: 44x44px (Apple HIG) */
.button, .link, .tap-target {
    min-height: 44px;
    min-width: 44px;
}
```

---

## 🔧 JAVASCRIPT STANDARDS

### Router Pattern (ĐÃ CÓ TRONG app.js)

```javascript
// Navigation
app.loadPage('page-name');  // Load trang mới

// Back button
app.goBack();  // Quay lại trang trước

// Data binding
<button data-page="login">  // Navigate to login page
```

### Mock Data Structure

```javascript
// js/mock-data.js
const mockData = {
    user: {
        // User info
    },
    invoices: [
        // Array of invoices
    ],
    // ... thêm data khác
};

window.mockData = mockData;  // Global access
```

### Event Handling

```javascript
// Bind events TRONG từng page HTML
<script>
    // Page-specific logic
    document.getElementById('btn').addEventListener('click', () => {
        // Handle click
    });
</script>
```

---

## ✅ TESTING REQUIREMENTS

### Pre-commit Checklist

```
□ Code chạy không lỗi console
□ Tất cả links/buttons hoạt động
□ Layout đúng trên mobile viewport (375x667, 390x844)
□ Không có scroll ngang
□ Navigation smooth, không giật lag
□ Safe area hiển thị đúng (test trên iPhone với notch)
□ PWA install được (manifest.json valid)
□ Offline mode work (Service Worker)
```

### Browser Testing (BẮT BUỘC)

```
✓ Chrome Mobile (Android)
✓ Safari Mobile (iOS)
✓ Test portrait & landscape
```

### Device Testing (KHUYẾN KHÍCH)

```
• iPhone SE (375x667) - Small screen
• iPhone 14 Pro (390x844) - Notch
• iPhone 15 Pro Max (430x932) - Large + island
• Android (360x740) - Typical Android
```

---

## 📁 FILE NAMING CONVENTIONS

### HTML Pages
```
pages/home.html           ✓ Lowercase, hyphen
pages/login.html          ✓
pages/invoice-detail.html ✓
pages/user-profile.html   ✓

pages/Home.html           ✗ No uppercase
pages/invoice_detail.html ✗ No underscore
```

### Assets
```
assets/screenshots/01-home.webp           ✓
assets/screenshots/02-login-screen.webp   ✓
assets/icons/icon-user.webp               ✓
assets/images/logo-etax.webp              ✓
```

---

## 🚀 WORKFLOW QUY TRÌNH

### 1. Nhận screenshots mới

```bash
# Check screenshots có trong folder
ls -la assets/screenshots/

# List screenshots chưa làm
# So với pages/ đã tạo
```

### 2. Phân tích từng screenshot

**Checklist phân tích:**
```
□ Loại màn hình: List/Detail/Form/Other?
□ Có header không? Height bao nhiêu?
□ Có bottom nav không?
□ Có scroll không? Vertical hay horizontal?
□ Colors: Background, text, accent
□ Components: Cards, buttons, inputs, lists
□ Spacing: Padding, margin, gap
□ Typography: Sizes, weights
□ Icons: Vị trí, size
```

### 3. Code page mới

```bash
# Step 1: Copy template
cp pages/_template.html pages/ten-man-hinh.html

# Step 2: Edit HTML structure
# Step 3: Add CSS trong pages.css
# Step 4: Add mock data nếu cần
# Step 5: Test
```

### 4. CSS Implementation

```css
/* Trong pages.css, thêm styles cho page mới */

/* Page: ten-man-hinh */
.ten-man-hinh {
    /* Layout */
}

.ten-man-hinh__header {
    /* Đo từ screenshot */
    height: 56px;
    padding: 12px 16px;
}

.ten-man-hinh__content {
    /* ... */
}
```

### 5. Testing

```bash
# Open in browser
# Test navigation
# Test interactions
# Check console for errors
# Verify measurements
```

### 6. Commit

```bash
git add .
git commit -m "✨ feat: Thêm trang [tên-màn-hình]"
```

---

## 🎯 QUALITY GATES (KHÔNG ĐƯỢC SKIP)

### Code Quality
```
✓ No inline styles (trừ dynamic styles)
✓ No !important (trừ override cần thiết)
✓ Semantic HTML (header, nav, main, section)
✓ Accessible (alt text, aria labels khi cần)
✓ Clean indentation (2 spaces)
```

### Performance
```
✓ Images optimized (WebP)
✓ No unused CSS/JS
✓ Lazy load images if > 10
✓ Minify before deploy
```

### Mobile UX
```
✓ Fast tap response (< 100ms)
✓ No zoom on input focus
✓ Smooth scroll
✓ Clear tap targets
✓ Loading states for async
```

---

## 🔍 MEASUREMENT TOOLS & TECHNIQUES

### Tools anh có thể dùng:

1. **Browser DevTools**
   - Inspect element → Computed styles
   - Measure tool (Ctrl+Shift+C)
   - Device toolbar (mobile viewport)

2. **Screenshot Analysis**
   - Zoom 400% để đếm pixels
   - Use rulers/grids
   - Color picker for exact colors

3. **Comparison**
   - Overlay screenshot lên code
   - Visual regression testing

### Kỹ thuật đo đạc:

```
1. Open screenshot trong image viewer
2. Measure với ruler tool hoặc count pixels
3. Note down measurements
4. Apply vào CSS
5. Compare với screenshot
6. Iterate until perfect
```

---

## 📞 ESCALATION & QUESTIONS

### Khi cần hỏi anh Nghĩa:

**Về measurements:**
```
"Anh ơi, screenshot này e đo header cao 56px đúng không ạ?"
"Màu này anh confirm: #1976D2 hay #1565C0 ạ?"
```

**Về functionality:**
```
"Màn hình này có cần animation không anh?"
"Button này dẫn đến trang nào anh?"
```

**Về assets:**
```
"E cần icon này size lớn hơn, anh có file gốc không ạ?"
"Screenshot này hơi mờ, anh gửi lại được không ạ?"
```

---

## 🎓 BEST PRACTICES

### DO ✅
- Commit thường xuyên, mỗi trang 1 commit
- Comment code phức tạp
- Reuse components giống nhau
- Test trên mobile thật nếu có
- Ask khi không chắc chắn
- Double-check measurements

### DON'T ❌
- Hardcode data (dùng mock)
- Skip testing
- Guess measurements
- Copy-paste without understanding
- Leave console.log
- Ignore browser warnings

---

## 📊 PROGRESS TRACKING

### Checklist template:

```markdown
## Progress: eTax Mobile Clone

### Pages Completed: X/20

- [x] 01. Home (home.html)
- [x] 02. Login (login.html)
- [x] 03. Invoice List (invoice.html)
- [x] 04. Profile (profile.html)
- [ ] 05. Invoice Detail
- [ ] 06. ...
- [ ] 20. ...

### Current Status:
- Working on: [tên trang]
- Blocked by: [vấn đề nếu có]
- Need from anh: [yêu cầu]
```

Update file này trong git commits!

---

**Document Version**: 1.0  
**Last Updated**: 2025-11-18  
**Maintained by**: Cirpher (MiniMax Agent)  
**For Project**: eTax Mobile Clone

---

## 🔄 NEXT STEPS

1. Anh upload screenshots → `assets/screenshots/`
2. Anh upload video (optional) → workspace root
3. Agent analyze all screenshots
4. Agent tạo từng trang theo quy trình trên
5. Agent test kỹ mỗi trang
6. Agent commit & update progress
7. Repeat until hoàn thành 20 trang

**LET'S BUILD! 🚀**
