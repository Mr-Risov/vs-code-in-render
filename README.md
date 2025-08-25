
# VS Code in Render

Run **Visual Studio Code (code-server)** in the cloud using [Render](https://render.com).  
This project lets you deploy a private, browser-based VS Code IDE with just one click.  

---

## 🚀 Features
- Cloud-hosted VS Code accessible in any browser  
- Secure password authentication via `.env`  
- Persistent setup with `start.sh` auto-install & launch  
- One-click Render deploy supported  

---

## 📦 Deploy on Render

### 🔹 One-Click Deploy
Click the button below to instantly deploy this repo to Render:

[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy?repo=https://github.com/mr-risov/vs-code-in-render)

---

### 🔹 Manual Deploy
1. Fork or clone this repo.  
2. Push it to your GitHub (`mr-risov/vs-code-in-render`).  
3. Go to [Render Dashboard](https://dashboard.render.com/).  
4. Click **New → Web Service** → Connect your GitHub repo.  
5. Select **Build Command**:
   ```bash
   chmod +x start.sh


---

6. Select **Start Command**:
   ```bash
   ./start.sh

7. Add required environment variables (see below).
8. Deploy! 🎉

---

## ⚙️ Environment Variables (.env)

| Key        | Value (example)       | Description                                |
| ---------- | --------------------- | ------------------------------------------ |
| `PASSWORD` | `mystrongpassword123` | Login password for VS Code server          |
| `PORT`     | `8080`                | Port where code-server runs (default 8080) |

👉 In Render: Go to **Environment → Add Environment Variable** and set your values.

---

## 🖥️ Access

Once deployed:

1. Open your Render app URL (e.g., `https://your-app.onrender.com`).
2. Login with the password you set in `.env`.
3. Start coding in VS Code inside your browser 🎉.

---

## 📂 Project Structure

```
vs-code-in-render/
├── start.sh     # Auto install & launch script
├── render.yaml  # Render config (optional)
└── README.md    # This file
```

---

## 🔒 Security Notes

* Always set a **strong password** using the `PASSWORD` variable.
* Do not rely on the default password in production.
* Render free tier sleeps after 15 mins inactivity — upgrade for 24/7 uptime.

---

## 👨‍💻 Author

**mr-risov**
🚀 [GitHub Profile](https://github.com/mr-risov)

---


