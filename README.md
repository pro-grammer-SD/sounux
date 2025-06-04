# ⚙️ Custom WSL2 Kernel – Supercharged for Android GUI!
## 🚨 IMPORTANT: READ THIS FIRST
- ### 🧑‍🤝‍🧑 Clone this repo:

```bash
git clone https://github.com/pro-grammer-SD/sounux.git
```
#### Set the kernel using the [`bzImage`](/dist/kernel/bzImage) file located in [`dist/kernel`](/dist/kernel/).

- ### 🧩 Add Anbox Modules (Custom Fork)
 #### 🤖 Clone and install my Anbox modules fork:

```bash
git clone --depth=1 https://github.com/pro-grammer-SD/anbox-modules.git
cd anbox-modules
./INSTALL.sh
```
- ### 🚀 Launch Waydroid
#### Run the launcher:

[`./dist/scripts/launch-waydroid.sh`](/dist/scripts/launch-waydroid.sh)
#### If Waydroid shows a black screen, try:

```bash
waydroid prop set persist.waydroid.multi_windows true
```
# ✅ Done. Enjoy your GUI Android on WSL2.
