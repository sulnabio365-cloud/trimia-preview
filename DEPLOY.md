# Deployment Guide (SaaS Barberia)

This guide explains how to deploy the **Frontend** component of the SaaS Barberia for visual preview.

## ⚠️ Important Note on Backend
This project has two parts:
1.  **Frontend** (React): Can be hosted on Vercel/Netlify.
2.  **Backend** (Node.js/Express): Must be hosted on a server (Render, Railway, Heroku, etc.).

**For this preview:**
- Validating the **UI/UX** does not strictly require the backend if you are okay with "Loading" states or network errors for data.
- **Auth Mock Mode** works entirely in the browser, so the Login/Register screens will function perfectly on Vercel/Netlify without a backend!

---

## option 1: Deploy to Vercel (Preferred)

1.  **Push to GitHub**: Ensure this project is in a GitHub repository.
2.  **Import in Vercel**:
    - Go to [Vercel Dashboard](https://vercel.com).
    - Click **"Add New"** > **"Project"**.
    - Select your GitHub repo.
3.  **Configure Build**:
    - **Framework Preset**: Vite (should be auto-detected).
    - **Root Directory**: `./` (default).
    - **Build Command**: `npm run build` (default).
    - **Output Directory**: `dist` (default).
4.  **Environment Variables** (Optional):
    - To use real Supabase: Add `VITE_SUPABASE_URL` and `VITE_SUPABASE_ANON_KEY`.
    - Without these, it runs in **Mock Auth Mode** (perfect for preview).
5.  **Deploy**: Click "Deploy".

**Result**: You will get a live URL (e.g., `saas-barberia.vercel.app`).
- **Log in** using any email/password (Mock Mode).
- **Navigate** to Admin Dashboard.
- *Note: Data fetching (Appointments) will fail unless you configure a backend URL.*

---

## Option 2: Deploy to Netlify

1.  **Drag & Drop**:
    - Run `npm run build` locally.
    - Drag the `dist` folder to [Netlify Drop](https://app.netlify.com/drop).
2.  **Git Integration** (Better):
    - Connect GitHub repo to Netlify.
    - **Build Command**: `npm run build`.
    - **Publish Directory**: `dist`.
    - **Environment Vars**: Same as Vercel.

---

## Verifying the Preview
- **Routing**: Try refreshing on `/login` or `/admin`. The `vercel.json` and `_redirects` files ensure this works (SPA support).
- **Styles**: Glassmorphism should look identical to local dev.
- **Auth**: Mock login will succeed and redirect you correctly.
