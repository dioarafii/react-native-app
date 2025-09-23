const path = require('path');

module.exports = {
  // ===== BASIC CONFIGURATION =====
  preset: 'react-native',
  testEnvironment: 'node',
  
  // ===== PROJECT ROOT & PATHS =====
  rootDir: path.resolve(__dirname),
  roots: ['<rootDir>/src', '<rootDir>/e2e'],
  
  // ===== MODULE RESOLUTION =====
  moduleNameMapper: {
    // Handle module aliases (matches tsconfig.json paths)
    '^@/(.*)$': '<rootDir>/src/$1',
    '^@app/(.*)$': '<rootDir>/src/app/$1',
    '^@components/(.*)$': '<rootDir>/src/components/$1',
    '^@features/(.*)$': '<rootDir>/src/features/$1',
    '^@services/(.*)$': '<rootDir>/src/services/$1',
    '^@utils/(.*)$': '<rootDir>/src/utils/$1',
    '^@hooks/(.*)$': '<rootDir>/src/hooks/$1',
    '^@store/(.*)$': '<rootDir>/src/store/$1',
    '^@navigation/(.*)$': '<rootDir>/src/navigation/$1',
    '^@assets/(.*)$': '<rootDir>/src/assets/$1',
    '^@types/(.*)$': '<rootDir>/src/app/types/$1',
    
    // Handle static assets
    '\\.(jpg|jpeg|png|gif|eot|otf|webp|svg|ttf|woff|woff2|mp4|webm|wav|mp3|m4a|aac|oga)$': 
      '<rootDir>/__mocks__/fileMock.js',
    '\\.(css|less|scss|sass)$': 'identity-obj-proxy',
  },
  
  // ===== TRANSFORM CONFIGURATION =====
  transform: {
    '^.+\\.[jt]sx?$': 'babel-jest',
    '^.+\\.(js|jsx)$': 'babel-jest',
  },
  
  transformIgnorePatterns: [
    'node_modules/(?!(react-native|@react-native|react-navigation|@react-navigation|@react-native-community|react-native-reanimated|react-native-vector-icons|react-native-safe-area-context|react-native-screens|react-native-gesture-handler)/)',
  ],
  
  // ===== TEST MATCHING PATTERNS =====
  testMatch: [
    '<rootDir>/src/**/__tests__/**/*.{js,jsx,ts,tsx}',
    '<rootDir>/src/**/*.{test,spec}.{js,jsx,ts,tsx}',
    '<rootDir>/e2e/**/*.{test,spec}.{js,jsx,ts,tsx}',
  ],
  
  // ===== COVERAGE CONFIGURATION =====
  collectCoverage: true,
  collectCoverageFrom: [
    'src/**/*.{js,jsx,ts,tsx}',
    '!src/**/*.d.ts',
    '!src/**/*.stories.{js,jsx,ts,tsx}',
    '!src/**/*.test.{js,jsx,ts,tsx}',
    '!src/**/*.spec.{js,jsx,ts,tsx}',
    '!src/**/index.{js,jsx,ts,tsx}',
    '!src/**/types/**',
    '!src/assets/**',
    '!src/app/types/**',
  ],
  
  coverageDirectory: '<rootDir>/coverage',
  coverageReporters: [
    'text',
    'text-summary',
    'lcov',
    'html',
    'json',
    'clover',
  ],
  
  coverageThreshold: {
    global: {
      branches: 80,
      functions: 80,
      lines: 80,
      statements: 80,
    },
    './src/components/': {
      branches: 85,
      functions: 85,
      lines: 85,
      statements: 85,
    },
    './src/utils/': {
      branches: 90,
      functions: 90,
      lines: 90,
      statements: 90,
    },
  },
  
  // ===== SETUP FILES =====
  setupFiles: [
    '<rootDir>/node_modules/react-native-gesture-handler/jestSetup.js',
    '<rootDir>/__mocks__/react-native-config.js',
    '<rootDir>/__mocks__/react-native-device-info.js',
  ],
  
  setupFilesAfterEnv: [
    '@testing-library/jest-native/extend-expect',
    '<rootDir>/src/__tests__/setup.ts',
    '<rootDir>/src/__tests__/mocks.ts',
  ],
  
  // ===== MODULE FILE EXTENSIONS =====
  moduleFileExtensions: [
    'ts',
    'tsx',
    'js',
    'jsx',
    'json',
    'node',
  ],
  
  // ===== WATCH PLUGINS =====
  watchPlugins: [
    'jest-watch-typeahead/filename',
    'jest-watch-typeahead/testname',
    'jest-watch-select-projects',
  ],
  
  // ===== CI OPTIMIZATIONS =====
  testTimeout: 15000,
  maxWorkers: '50%',
  
  // ===== REPORTERS =====
  reporters: [
    'default',
    ['jest-junit', {
      outputDirectory: '<rootDir>/test-results',
      outputName: 'junit.xml',
      classNameTemplate: '{classname}',
      titleTemplate: '{title}',
    }],
    ['jest-html-reporter', {
      pageTitle: 'Test Report',
      outputPath: '<rootDir>/test-results/test-report.html',
      includeFailureMsg: true,
    }],
  ],
  
  // ===== CACHE CONFIGURATION =====
  cacheDirectory: '<rootDir>/node_modules/.cache/jest',
  
  // ===== GLOBAL SETUP/TEARDOWN =====
  globalSetup: '<rootDir>/src/__tests__/globalSetup.js',
  globalTeardown: '<rootDir>/src/__tests__/globalTeardown.js',
  
  // ===== SNAPSHOT SERIALIZERS =====
  snapshotSerializers: [
    '@testing-library/react-native/dist/serializer',
  ],
};
