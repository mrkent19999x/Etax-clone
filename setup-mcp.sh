#!/bin/bash

# 🎨 Pixel-Perfect Frontend Cloning Setup Script
# MiniMax Agent - 2025-11-18

set -e

echo "🚀 Starting MCP Tools Setup for Pixel-Perfect Frontend Cloning..."

# Create tools directory
mkdir -p /workspace/mcp-tools
cd /workspace/mcp-tools

echo "📦 Installing Node.js based MCP tools..."

# Install global npm packages
npm install -g @figma/mcp-server chrome-devtools-mcp uvx @superdesign/mcp-server

echo "🔧 Installing Browser MCP (hupeng9995)..."
if [ ! -d "browser-mcp" ]; then
    git clone https://github.com/hupeng9995/browser-mcp.git browser-mcp
    cd browser-mcp
    npm install
    cd ..
else
    echo "✅ Browser MCP already installed"
fi

echo "🔍 Installing Inspect MCP (ofriw)..."
if [ ! -d "inspect-mcp" ]; then
    git clone https://github.com/ofriw/inspect-mcp.git inspect-mcp
    cd inspect-mcp
    npm install
    cd ..
else
    echo "✅ Inspect MCP already installed"
fi

echo "🎨 Installing Superdesign MCP..."
# Superdesign MCP is installed globally via npm

echo "🐍 Installing Python based MCP tools..."
# Install Python packages
pip install imagesorcery-mcp opencv-python pillow

echo "📱 Setting up models directory..."
mkdir -p models
mkdir -p /workspace/etax-clean/.superdesign
mkdir -p /workspace/etax-clean/extracted-components
mkdir -p /workspace/etax-clean/pixel-analysis
mkdir -p /workspace/etax-clean/assets/fonts
mkdir -p /workspace/etax-clean/assets/icons
mkdir -p /workspace/etax-clean/assets/images

echo "🔑 Setting up environment configuration..."
cat > /workspace/etax-clean/.env.example << 'EOF'
# MiniMax API Key
MINIMAX_API_KEY=your-minimax-api-key-here

# Figma Personal Access Token  
FIGMA_TOKEN=your-figma-token-here

# Output paths
MINIMAX_MCP_BASE_PATH=/workspace/etax-clean/output
SUPERDESIGN_OUTPUT_PATH=/workspace/etax-clean/.superdesign
BROWSER_HEADLESS=false
INSPECT_HEADLESS=false

# API Hosts
MINIMAX_API_HOST=https://api.minimax.io
EOF

echo "📋 Creating useful command aliases..."

cat > /workspace/etax-clean/mcp-commands.sh << 'EOF'
#!/bin/bash

# MCP Commands for Pixel-Perfect Frontend Cloning

# Analyze a website's design
analyze-design() {
    local url="$1"
    echo "🔍 Analyzing design for: $url"
    # Sử dụng Browser MCP để extract colors, fonts, layout
    # Command sẽ được executed qua AI assistant
}

# Extract design system từ screenshot
extract-design-system() {
    local screenshot_path="$1"
    echo "🎨 Extracting design system from: $screenshot_path"
    # Sử dụng Superdesign MCP
}

# Generate pixel-perfect components
generate-components() {
    local design_system="$1"
    echo "⚡ Generating components from: $design_system"
    # Sử dụng MiniMax + Figma MCP
}

# Live CSS debugging
debug-layout() {
    local selector="$1"
    echo "🔍 Debugging layout for: $selector"
    # Sử dụng Inspect MCP
}

# Color palette extraction
extract-colors() {
    local source="$1"
    echo "🎨 Extracting colors from: $source"
    # Sử dụng Browser + Superdesign MCP
}

echo "📋 Available MCP commands:"
echo "  analyze-design <url>     - Analyze website design"
echo "  extract-design-system <file> - Extract from screenshot"
echo "  generate-components <system> - Generate pixel-perfect code"
echo "  debug-layout <selector>   - Debug CSS layout"
echo "  extract-colors <source>   - Extract color palette"
EOF

chmod +x /workspace/etax-clean/mcp-commands.sh

echo "✅ MCP Tools Setup Complete!"
echo ""
echo "📋 Next Steps:"
echo "1. Get API keys:"
echo "   - MiniMax: https://www.minimax.io/platform/user-center/basic-information/interface-key"
echo "   - Figma: https://www.figma.com/developers/api#access-tokens"
echo ""
echo "2. Copy .env.example to .env and add your API keys"
echo ""
echo "3. Configure your AI client:"
echo "   - Claude Desktop: Add content from .mcp.json"
echo "   - Cursor: Settings → MCP → Add Server"
echo ""
echo "4. Test setup:"
echo "   source /workspace/etax-clean/mcp-commands.sh"
echo "   analyze-design https://etax.gov.vn"
echo ""
echo "🎯 Ready for Pixel-Perfect Frontend Cloning!"

EOF