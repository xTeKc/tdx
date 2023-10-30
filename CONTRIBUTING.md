<!-- /*************************
 *  Copyright (c) xTekC.      *
 *  Licensed under MPL-2.0.   *
 *  See LICENSE for details.  *
 *                            *
 ******************************/ -->

# tdx Contributing Guide

## Development

### Setup

- Fedora
    ```
    sudo dnf groupinstall "Development Tools" "Development Libraries" perl-FindBin
    ```

    or

    ```
    sudo dnf install openssl-devel perl-FindBin perl-File-Compare zstd
    ```

- __just__ (run commands) `cargo install just` <br> In .bashrc or equivalent `alias j="just"`
- __dioxus__ (build PWA) `cargo install dioxus-cli`
- __watch__ (external hot reloading) `cargo install cargo-watch`
- __grass__ (sass compiler) `cargo install grass`
- __git-clif__ (changelog creator) `cargo install git-cliff`
- __adb__ (android localhost) `https://developer.android.com/tools/adb`

<br>

__View all of the Justfile commands:__ `j` <br>

Run: `j w` to build the PWA from _pwa/index.html_ and watch for changes. <br>
This will start a localhost server on the PC at `http://127.0.0.1:8080/#dev`

__Run localhost on an Android device:__ <br>
- Connect Android device via USB.
- I recommend changing the display timeout to 30 minutes. <br>
   __Settings__ > __Display__ > __Screen timeout__: 30 minutes.
- Make sure __USB Debugging__ is enabled. <br>
   __Settings__ > __About Phone__ > tap tap tap __Build number__ until __developer options__ is unlocked. <br>
   Then go to __Settings__ > __System__ > __Developer options__ (make sure __Use developer options__ is enabled) > scroll down and enable __USB debugging__. <br>
- Swipe down from the top and tap __Charging this devices via USB__.
- In the __USB Preferences__, change __use USB for__ to __File Transfer__.
- __Allow__ and __remember__ the connection from your PC.
- In a new terminal session, run: `j la` on the PC.
- Finally, go to `http://127.0.0.1:8080/#dev` in the Android devices' browser.

<!-- ## Deployment Setup
Set up project deployment with GitHub Actions and Render as follows:

## GitHub Workflow Permissions
- Go to `Settings > Actions > General > Workflow permissions` in the GitHub repository.
- Select `Read and write` permissions.

## Render Manual Setup
- In Render Dashboard, create a new static site.
- Go to `Configure account > Configure > Select repo`. Save and Connect to `tdx` repo.
- Enter site name as `tdx`. 
- Add `cargo install dioxus-cli && dx build --release` to the Build Command 
- Set publish directory to `dist`.
- In advanced settings, disable `autoDeploy`.
- After creating the static site, cancel the deployment, copy the `Deploy Hook` in Settings.

## GitHub Environment Variable
- Go to `Settings > Secrets and variables > Actions` in the GitHub repository.
- Add a new secret: `RENDER_DEPLOY_HOOK_URL` with the copied Deploy Hook.

This setup enables the `cd.yml` workflow to deploy on Render with necessary permissions. -->

## Pull Request Guidelines

- **Sign your commits**: All commits in your pull request must be signed. If you're not sure how to do this, refer to the GitHub documentation for instructions. https://docs.github.com/en/authentication/managing-commit-signature-verification/signing-commits.

- **Committing changes**: It's acceptable to make multiple small commits as you work on your pull request. This can help keep your changes organized and make it easier to review your work. GitHub will automatically handle these commits before merging them into the main branch.

- **Adding a feature**: If you're adding a new feature, provide a clear and convincing reason as to why it should be added. Ideally, you should open a suggestion issue first and have it approved before working on it.

- **Resolving a bug**: If you're resolving a special issue, add (fix: #xxxx[,#xxx]) to your PR title for a better release log. Replace #xxxx with the issue ID. For example: `fix: resolve buffer overflow (fix #1234)`.

  - Provide a detailed description of the bug in the PR or link to an issue that does.

Thank you for contributing to the project!
