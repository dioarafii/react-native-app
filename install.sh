#!/bin/bash
set -e

echo "Starting installation of dependencies with the latest versions using pnpm..."

#!/bin/bash

echo "🚀 Installing Production Dependencies..."

# REACT & REACT NATIVE CORE
echo "Installing React & React Native Core..."
pnpm add react@latest \
react-native@latest

# NAVIGATION
echo "Installing Navigation..."
pnpm add @react-navigation/native@latest \
@react-navigation/stack@latest

# STATE MANAGEMENT & FORMS
echo "Installing State Management & Forms..."
pnpm add @reduxjs/toolkit@latest \
react-redux@latest \
redux-persist@latest \
react-hook-form@latest

# HTTP CLIENT & UTILITIES
echo "Installing HTTP Client & Utilities..."
pnpm add axios@latest \
qs@latest \
lodash@latest \
moment@latest \
validator@latest \
crypto-js@latest

# STORAGE & SECURITY
echo "Installing Storage & Security..."
pnpm add @react-native-async-storage/async-storage@latest \
react-native-keychain@latest \
react-native-device-info@latest \
react-native-config@latest

# NETWORK & CONNECTIVITY
echo "Installing Network & Connectivity..."
pnpm add @react-native-community/netinfo@latest

# UI & GESTURES
echo "Installing UI & Gestures..."
pnpm add react-native-gesture-handler@latest \
react-native-reanimated@latest \
react-native-safe-area-context@latest \
react-native-screens@latest \
react-native-vector-icons@latest

# PERMISSIONS & HARDWARE
echo "Installing Permissions & Hardware..."
pnpm add react-native-permissions@latest \
react-native-camera@latest \
react-native-image-picker@latest \
react-native-svg@latest \
react-native-webview@latest \
react-native-qrcode-scanner@latest

# NOTIFICATIONS
echo "Installing Notifications..."
pnpm add react-native-push-notification@latest

# MONITORING & ANALYTICS
echo "Installing Monitoring & Analytics..."
pnpm add @sentry/react-native@latest

# OTA UPDATES
echo "Installing OTA Updates..."
pnpm add react-native-code-push@latest

# FIREBASE SERVICES
echo "Installing Firebase Services..."
pnpm add react-native-firebase@latest \
@react-native-firebase/app@latest \
@react-native-firebase/auth@latest \
@react-native-firebase/firestore@latest \
@react-native-firebase/crashlytics@latest \
@react-native-firebase/analytics@latest

# DEBUGGING TOOLS
echo "Installing Debugging Tools..."
pnpm add react-native-flipper@latest

# OPENTELEMETRY OBSERVABILITY
echo "Installing OpenTelemetry Observability..."
pnpm add @opentelemetry/api@latest \
@opentelemetry/core@latest \
@opentelemetry/sdk-trace-base@latest \
@opentelemetry/sdk-metrics@latest \
@opentelemetry/exporter-trace-otlp-http@latest \
@opentelemetry/exporter-metrics-otlp-http@latest \
@opentelemetry/instrumentation-react-native@latest \
@opentelemetry/instrumentation-http@latest \
@opentelemetry/instrumentation-fetch@latest \
@opentelemetry/resources@latest \
@opentelemetry/semantic-conventions@latest

echo "All production dependencies installed successfully!"


echo "🚀 Installing Production Dev-dependencies..."

# Babel dependencies
pnpm add -D @babel/core@latest @babel/runtime@latest @babel/preset-env@latest @babel/preset-typescript@latest

# OpenTelemetry dependencies
pnpm add -D @opentelemetry/auto-instrumentations-node@latest @opentelemetry/instrumentation@latest

# Metro dependencies
pnpm add -D metro@latest metro-config@latest metro-core@latest metro-react-native-babel-preset@latest

# TypeScript dependencies
pnpm add -D typescript@latest @types/react@latest @types/react-native@latest @types/jest@latest @types/lodash@latest @types/validator@latest

# TypeScript ESLint
pnpm add -D @typescript-eslint/eslint-plugin@latest @typescript-eslint/parser@latest typescript-plugin-css-modules@latest

# Jest testing dependencies
pnpm add -D jest@latest jest-react-native@latest babel-jest@latest jest-circus@latest jest-environment-node@latest jest-junit@latest

# Testing Library
pnpm add -D @testing-library/react-native@latest @testing-library/jest-native@latest

# E2E testing
pnpm add -D detox@latest react-test-renderer@latest msw@latest sinon@latest chai@latest

# ESLint and plugins
pnpm add -D eslint@latest @react-native-community/eslint-config@latest eslint-config-prettier@latest eslint-plugin-prettier@latest eslint-plugin-react@latest eslint-plugin-react-hooks@latest eslint-plugin-react-native@latest eslint-plugin-import@latest eslint-plugin-jsx-a11y@latest eslint-plugin-promise@latest eslint-plugin-security@latest eslint-plugin-you-dont-need-lodash-underscore@latest eslint-plugin-no-only-tests@latest eslint-plugin-perf@latest

# Prettier and plugins
pnpm add -D prettier@latest prettier-plugin-organize-imports@latest prettier-plugin-packagejson@latest prettier-plugin-sort-json@latest prettier-plugin-tailwindcss@latest

# Babel plugins
pnpm add -D babel-plugin-module-resolver@latest babel-plugin-lodash@latest babel-plugin-transform-remove-console@latest babel-plugin-react-native-platform-specific-extensions@latest babel-plugin-replace-require@latest

# Bundle analysis
pnpm add -D react-native-bundle-visualizer@latest webpack-bundle-analyzer@latest source-map-explorer@latest

# Performance tools
pnpm add -D react-native-performance@latest why-did-you-render@latest react-native-debugger@latest

# Flipper and debugging
pnpm add -D flipper@latest flipper-plugin-react-native-performance@latest reactotron-react-native@latest redux-flipper@latest

# Security tools
pnpm add -D audit-ci@latest license-checker@latest npm-audit-resolver@latest snyk@latest oss-attribution-generator@latest

# Git hooks and commit tools
pnpm add -D husky@latest lint-staged@latest commitizen@latest cz-conventional-changelog@latest @commitlint/cli@latest @commitlint/config-conventional@latest

# Versioning and monorepo tools
pnpm add -D standard-version@latest lerna@latest nx@latest turbo@latest

# Build utilities
pnpm add -D rimraf@latest cross-env@latest npm-run-all@latest concurrently@latest wait-on@latest patch-package@latest postinstall-postinstall@latest

# Storybook
pnpm add -D storybook@latest @storybook/react@latest @storybook/addon-essentials@latest @storybook/addon-react-native-web@latest react-docgen-typescript@latest

# Deployment tools
pnpm add -D appcenter-cli@latest fastlane@latest code-push-cli@latest firebase-tools@latest

# Asset processing
pnpm add -D react-native-asset@latest sharp@latest svg-to-react-native@latest

# React Native specific tools
pnpm add -D react-native-typescript-transformer@latest react-native-css-interop@latest @perf-tools/react-native-profiler@latest react-native-memory-profiler@latest


echo "All production dev-dependencies installed successfully!"

echo "Installation completed!"

