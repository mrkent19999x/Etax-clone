# 🎨 Pixel-Perfect Frontend Cloning Setup Guide

Hướng dẫn setup hoàn chỉnh các MCP tools để clone pixel-perfect layout từ Figma designs hoặc screenshots.

## 🚀 MCP Tools Overview

### **1. MiniMax MCP** - AI Image/Video Generation
**Purpose**: Generate high-quality images, videos, audio cho UI mockups
```bash
# Installation
curl -LsSf https://astral.sh/uv/install.sh | sh
npm install -g uvx

# Get API key từ: https://www.minimax.io/platform/user-center/basic-information/interface-key
```

### **2. Figma MCP (Official)** - Design to Code
**Purpose**: Trích xuất design từ Figma files thành code pixel-perfect
```bash
# Installation
npm install -g @figma/mcp-server

# Setup Figma token:
# 1. Vào Figma → Account Settings → Personal Access Tokens
# 2. Generate token mới
# 3. Config trong .mcp.json
```

### **3. Browser MCP** - Pixel Analysis
**Purpose**: Analyze websites, extract colors, fonts, layout chính xác
```bash
# Installation
git clone https://github.com/hupeng9995/browser-mcp.git
cd browser-mcp
npm install

# Features:
# ✅ Color palette extraction
# ✅ Font analysis
# ✅ CSS component extraction
# ✅ Responsive analysis
# ✅ Interactive element detection
```

### **4. Inspect-MCP** - Layout Precision
**Purpose**: Chrome DevTools integration với pixel-perfect analysis
```bash
# Installation  
git clone https://github.com/ofriw/inspect-mcp.git
cd inspect-mcp
npm install

# Features:
# ✅ Box model analysis (content, padding, border, margin)
# ✅ CSS cascade inspection
# ✅ Live CSS editing
# ✅ Multi-element relationship analysis
```

### **5. Superdesign MCP** - Screenshot Analysis
**Purpose**: Extract design system từ screenshots (colors, typography, spacing)
```bash
# Installation
npm install -g @superdesign/mcp-server

# Features:
# ✅ Screenshot to design system extraction
# ✅ Color palette generation
# ✅ Typography analysis
# ✅ Spacing system extraction
# ✅ Local execution (privacy)
```

### **6. Chrome DevTools MCP** - CSS Saving
**Purpose**: Save CSS changes directly từ browser dev tools
```bash
# Installation
npm install -g chrome-devtools-mcp

# Features:
# ✅ Live CSS editing
# ✅ Save changes directly
# ✅ Automatic file sync
```

### **7. ImageSorcery MCP** - Computer Vision
**Purpose**: OCR, object detection, image analysis
```bash
# Installation
pip install imagesorcery-mcp

# Features:
# ✅ Text extraction (OCR)
# ✅ Object detection
# ✅ Image editing
# ✅ Color analysis
```

## 🛠️ Setup Instructions

### Step 1: Install Dependencies

```bash
# Core Node.js tools
npm install -g @figma/mcp-server chrome-devtools-mcp uvx

# Clone và install MCP tools
mkdir -p /workspace/mcp-tools
cd /workspace/mcp-tools

# Browser MCP
git clone https://github.com/hupeng9995/browser-mcp.git browser-mcp
cd browser-mcp && npm install && cd ..

# Inspect MCP  
git clone https://github.com/ofriw/inspect-mcp.git inspect-mcp
cd inspect-mcp && npm install && cd ..

# Superdesign MCP
npm install -g @superdesign/mcp-server

# Python tools
pip install imagesorcery-mcp
```

### Step 2: Configure MCP Client

**Option A: Claude Desktop**
1. Edit `~/Library/Application Support/Claude/claude_desktop_config.json`
2. Add content từ `.mcp.json`

**Option B: Cursor**
1. Cursor → Settings → MCP → Add New Server
2. Upload `.mcp.json` hoặc configure manually

### Step 3: Environment Setup

```bash
# Create environment file
cp .env.example .env

# Add your API keys:
MINIMAX_API_KEY=your-minimax-key
FIGMA_TOKEN=your-figma-token
```

## 🎯 Pixel-Perfect Workflow

### **Scenario 1: Figma to Code**
```javascript
// 1. Open Figma file trong desktop app
// 2. Enable Dev Mode MCP server
// 3. In AI assistant:

await figma_mcp.analyze_frame({
  file_id: "figma-file-id",
  frame_name: "Home Page Design"
});

// Returns: Colors, typography, spacing, layout structure
```

### **Scenario 2: Screenshot Analysis**
```javascript
// 1. Take screenshot của target website
// 2. Use Superdesign MCP:

await superdesign.extract_system({
  screenshot_path: "/path/to/screenshot.png",
  output_format: "json"
});

// Returns: Complete design system
```

### **Scenario 3: Live Website Analysis**
```javascript
// 1. Navigate to target URL
// 2. Extract colors và fonts:

await browser.extract_color_palette();
await browser.analyze_fonts();
await browser.extract_component_css({
  selector: ".primary-button"
});

// Returns: Exact colors, fonts, CSS
```

### **Scenario 4: Pixel-Perfect Debugging**
```javascript
// 1. Load page trong browser
// 2. Inspect element:

await inspect.inspect_element({
  url: "https://target-site.com",
  css_selector: ".header",
  property_groups: ["layout", "colors", "typography"]
});

// Returns: Exact measurements, computed styles
```

## 🎨 Color Extraction Commands

```javascript
// Extract full color palette
await browser.extract_color_palette();

// Get color frequencies
await browser.extract_color_palette({
  include_frequencies: true
});

// Extract specific color scheme
await superdesign.extract_colors({
  image_path: "/screenshot.png",
  color_count: 10
});
```

## 📐 Layout Analysis Commands

```javascript
// Pixel-perfect box model
await inspect.inspect_element({
  css_selector: ".container",
  property_groups: ["box", "layout"]
});

// Multi-element relationships
await inspect.inspect_elements({
  url: "https://site.com",
  css_selectors: [".header", ".nav", ".content"],
  property_groups: ["layout"]
});
```

## 🔧 AI Commands for eTax Clone

```javascript
// Clone eTax interface pixel-perfect
await browser.analyze_website({
  url: "https://etax.gov.vn",
  analysis_type: "full_interface"
});

// Extract Vietnamese tax UI patterns
await browser.extract_vietnamese_ui_patterns({
  language: "vi",
  theme: "government"
});

// Generate matching components
await minimax.generate_ui_components({
  style: "vietnamese_tax_office",
  color_scheme: "blue_white",
  typography: "clean_professional"
});
```

## 📁 Output Structure

```
/workspace/etax-clean/
├── .mcp.json                    # MCP configuration
├── .superdesign/                # Extracted design systems
│   ├── design_system/          
│   ├── colors.json
│   ├── typography.json
│   └── spacing.json
├── extracted-components/        # Cloned components
│   ├── header.html
│   ├── header.css
│   └── components.json
├── pixel-analysis/              # Layout analysis
│   ├── box-models/
│   ├── color-palettes/
│   └── typography/
└── assets/                      # Downloaded assets
    ├── fonts/
    ├── icons/
    └── images/
```

## 🎯 Quick Start Commands

```bash
# 1. Setup tất cả tools
npm run setup-mcp

# 2. Analyze target design
npm run analyze-design --url="https://etax.gov.vn"

# 3. Extract components
npm run extract-components

# 4. Generate pixel-perfect code
npm run generate-code

# 5. Test responsive
npm run test-responsive
```

## 🔥 Advanced Features

### **Live CSS Editing**
```javascript
// Edit CSS và save trực tiếp
await chrome_devtools.edit_css({
  selector: ".etax-header",
  properties: {
    "background-color": "#1e40af",
    "padding": "16px"
  },
  save_to_file: true
});
```

### **Design System Audit**
```javascript
// Audit existing design system
await superdesign.audit_design_system({
  screenshots: ["/path/to/screenshots/"],
  output_report: "/audit-report.md"
});
```

### **Component Generation**
```javascript
// Generate components từ design
await minimax.generate_components({
  design_system: extracted_design,
  framework: "html-css-js",
  output_format: "component_library"
});
```

## 🚀 Ready to Clone!

Bây giờ e có đầy đủ tools để:
- ✅ Clone pixel-perfect từ Figma
- ✅ Extract design systems từ screenshots  
- ✅ Analyze live websites chính xác
- ✅ Generate production-ready code
- ✅ Debug layout với pixel precision
- ✅ Save changes trực tiếp từ browser

**MCP Configuration đã ready tại:** `.mcp.json`  
**Setup guide:** Follow commands trong guide này!

---

**Author:** MiniMax Agent  
**Created:** 2025-11-18