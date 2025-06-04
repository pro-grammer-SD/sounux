# ⚙️ Custom WSL2 Kernel @SouNux – Supercharged for Android GUI!

## 🚨 IMPORTANT: *READ THIS FIRST!*

- ### 🧑‍🤝‍🧑 Clone this repo:

```bash
git clone https://github.com/pro-grammer-SD/sounux.git
```

#### Set the kernel using the [`bzImage`](/dist/kernel/bzImage) file located in [`dist/kernel`](/dist/kernel/).

1. `wsl --shutdown`

2. #### Open WSL Settings **(Newly Introduced)** in WSL 2
![](/assets/images/img1.png)

3. #### Select browse kernels and search for this repo's `bzImage` locally.
![](/assets/images/img2.png)

4. `wsl`

5. ### **(🤓 NERDY STEP)**: Run `uname -r`.
#### You should get something like as of my case: `6.6.87-sounux-sounux+`

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

# Screenshots:
## 1️⃣.
![](/assets/images/img3.png)

## 2️⃣.
![](/assets/images/img4.png)