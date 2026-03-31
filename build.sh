#!/bin/bash
# Netlify build script: config.js'i environment variable'lardan olusturur
cat > web/config.js << JSEOF
const APP_CONFIG = {
  password: '${APP_PASSWORD}',
  firebase: {
    apiKey: "${FIREBASE_API_KEY}",
    authDomain: "${FIREBASE_AUTH_DOMAIN}",
    databaseURL: "${FIREBASE_DATABASE_URL}",
    projectId: "${FIREBASE_PROJECT_ID}",
    storageBucket: "${FIREBASE_STORAGE_BUCKET}",
    messagingSenderId: "${FIREBASE_MESSAGING_SENDER_ID}",
    appId: "${FIREBASE_APP_ID}"
  }
};
JSEOF
echo "config.js generated from environment variables"
