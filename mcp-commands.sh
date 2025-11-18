#!/bin/bash

# MCP Commands for Pixel-Perfect Frontend Cloning
# MiniMax Agent - 2025-11-18

echo "🎯 MCP Commands Ready!"
echo ""
echo "📋 Available Commands:"
echo "  analyze-design <url>     - Analyze website design với Browser MCP"
echo "  extract-colors <source>   - Extract color palette từ design/screenshot"
echo "  extract-design-system <file> - Extract design system từ screenshot"
echo "  generate-components <system> - Generate pixel-perfect components"
echo "  debug-layout <selector>   - Debug CSS layout với Inspect MCP"
echo "  ocr-text <image>          - Extract text từ image (OCR)"
echo "  detect-objects <image>    - Detect objects trong image"
echo ""
echo "🔧 Setup Commands:"
echo "  setup-mcp-tools           - Install tất cả MCP tools"
echo "  test-mcp-connection       - Test MCP connection"
echo ""
echo "🎨 Workflow Examples:"
echo "  # Clone eTax interface pixel-perfect"
echo "  analyze-design https://etax.gov.vn"
echo ""
echo "  # Extract colors và typography"
echo "  extract-colors https://etax.gov.vn"
echo ""
echo "  # Generate components từ design"
echo "  extract-design-system ./screenshot.png"
echo ""
echo "  # Debug specific element"
echo "  debug-layout .etax-header"
echo ""

# Function definitions
analyze-design() {
    if [ -z "$1" ]; then
        echo "❌ Please provide URL: analyze-design <url>"
        return 1
    fi
    echo "🔍 Analyzing design for: $1"
    echo "✅ Use Browser MCP trong AI assistant:"
    echo "   await browser.extract_color_palette();"
    echo "   await browser.analyze_fonts();"
    echo "   await browser.extract_component_css({ selector: '.main-container' });"
}

extract-colors() {
    if [ -z "$1" ]; then
        echo "❌ Please provide source: extract-colors <url_or_file>"
        return 1
    fi
    echo "🎨 Extracting colors from: $1"
    echo "✅ Use Superdesign MCP:"
    echo "   await superdesign.extract_colors({ image_path: '$1' });"
}

extract-design-system() {
    if [ -z "$1" ]; then
        echo "❌ Please provide file: extract-design-system <screenshot.png>"
        return 1
    fi
    echo "🎨 Extracting design system from: $1"
    echo "✅ Use Superdesign MCP:"
    echo "   await superdesign.extract_system({ screenshot_path: '$1' });"
}

generate-components() {
    if [ -z "$1" ]; then
        echo "❌ Please provide design system: generate-components <design_system.json>"
        return 1
    fi
    echo "⚡ Generating components from: $1"
    echo "✅ Use MiniMax + Figma MCP:"
    echo "   await minimax.generate_ui_components({ design_system: '$1' });"
}

debug-layout() {
    if [ -z "$1" ]; then
        echo "❌ Please provide selector: debug-layout <css_selector>"
        return 1
    fi
    echo "🔍 Debugging layout for: $1"
    echo "✅ Use Inspect MCP:"
    echo "   await inspect.inspect_element({ css_selector: '$1', property_groups: ['box', 'layout'] });"
}

setup-mcp-tools() {
    echo "🛠️  Setting up MCP tools..."
    bash setup-mcp.sh
}

test-mcp-connection() {
    echo "🧪 Testing MCP connection..."
    echo "✅ Configuration files:"
    ls -la .mcp.json 2>/dev/null && echo "   .mcp.json exists" || echo "   .mcp.json missing"
    ls -la setup-mcp.sh 2>/dev/null && echo "   setup-mcp.sh exists" || echo "   setup-mcp.sh missing"
    echo ""
    echo "🔧 Node.js tools:"
    which npm >/dev/null && echo "   npm: $(npm --version)" || echo "   npm: not installed"
    which node >/dev/null && echo "   node: $(node --version)" || echo "   node: not installed"
    echo ""
    echo "🐍 Python tools:"
    which python3 >/dev/null && echo "   python3: $(python3 --version)" || echo "   python3: not installed"
    echo ""
    echo "📋 Next steps:"
    echo "1. Get API keys (MiniMax, Figma)"
    echo "2. Copy .env.example to .env"
    echo "3. Configure AI client với .mcp.json"
    echo "4. Run: npm run setup-mcp"
}

# Show available functions
echo "💡 Usage: source mcp-commands.sh && <command>"
echo "💡 Example: source mcp-commands.sh && analyze-design https://example.com"