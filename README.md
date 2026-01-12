# SaaS Barberia - No-Code Platform

A modern, minimalist SaaS for barber shops with a simple Node.js + SQLite backend.

## Structure
- `/server`: Node.js Express Backend + SQLite Database
- `/`: React + Vite Frontend

## Setup & Running

**Prerequisites:**
- Node.js installed (v16+)

**1. Install Dependencies**
```bash
# Frontend
npm install

# Backend
cd server
npm install
```

**2. Run the Application**
You need to run TWO terminals.

Terminal 1 (Backend):
```bash
cd server
node index.js
# Runs on Port 3000
```

Terminal 2 (Frontend):
```bash
npm run dev
# Runs on Port 5173
```

## Features
- **Multi-Tenant Ready**: Change the shop via URL (e.g., `/?shop=my-shop`).
- **Admin Panel**: Go to `/admin` to configure the shop name and styling visually.
- **Booking System**: Select a professional and a time slot.
- **Persistence**: All data is saved to `server/database.sqlite`.

## MVP Notes
- The default shop is seeded automatically if the database is empty.
- Accessing different shops requires manual database entry in this MVP unless you build a "Signup" page, but the logic supports it via `slug`.
