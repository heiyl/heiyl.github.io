#!/bin/bash

# Jekyll 本地运行脚本

echo "======================================"
echo "正在设置 Jekyll 本地开发环境..."
echo "======================================"
echo ""

# 检查 Ruby 和 Bundler
echo "检查 Ruby 版本..."
ruby --version
echo ""

echo "检查 Bundler 版本..."
bundle --version
echo ""

# 配置使用国内镜像源（如果还没有配置）
echo "检查 gem 源配置..."
gem sources -l
echo ""

# 配置 Bundler 使用本地路径
echo "配置 Bundler 使用本地 vendor/bundle 目录..."
bundle config set --local path 'vendor/bundle'
echo ""

# 安装依赖
echo "======================================"
echo "安装 Jekyll 和相关依赖（这可能需要几分钟）..."
echo "======================================"
echo ""
bundle install
echo ""

# 检查安装是否成功
if [ $? -eq 0 ]; then
    echo "======================================"
    echo "依赖安装成功！"
    echo "======================================"
    echo ""
    echo "启动 Jekyll 本地服务器..."
    echo "服务器将运行在: http://localhost:4000"
    echo "按 Ctrl+C 停止服务器"
    echo ""
    
    bundle exec jekyll serve -l -H localhost
else
    echo "======================================"
    echo "依赖安装失败，请检查错误信息"
    echo "======================================"
    echo ""
    echo "如果遇到网络问题，可以尝试："
    echo "1. 检查网络连接"
    echo "2. 确认 gem 源配置：gem sources -l"
    echo "3. 如果使用国内镜像，确保 Gemfile 中的 source 已更新为国内镜像地址"
    exit 1
fi
