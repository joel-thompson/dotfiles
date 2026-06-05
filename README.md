# dotfiles
dotfile collection/templates

## Python setup

Python is managed by [uv](https://docs.astral.sh/uv/).

Default behavior:
- `python` and `python3` should resolve from `~/.local/bin`.
- The uv-managed global default is pinned in `~/.config/uv/.python-version`.
- Current default: Python 3.12.

Recreate on a new machine:

1. Install uv if it is not already installed:

```sh
command -v uv >/dev/null || curl -LsSf https://astral.sh/uv/install.sh | sh
```

2. Make sure `~/.local/bin` is on PATH before system locations like `/usr/bin`:

```sh
export PATH="$HOME/.local/bin:$PATH"
```

Keep that line in the relevant shell startup file, such as `~/.zshrc`, if the machine does not already have it.

3. Install and pin the default Python:

```sh
uv python install 3.12 --default
uv python pin --global 3.12
rehash
```

`uv python pin --global 3.12` recreates `~/.config/uv/.python-version`, which is intentionally machine-local and does not need to live in this dotfiles repo.

Smoke-test:

```sh
which python
python --version
which python3
python3 --version
uv python list --only-installed
```

Daily usage:

```sh
# Run normal scripts with the default Python
python script.py

# Run a one-off script/command with temporary dependencies
uv run --with requests -- python script.py

# Add dependencies to a reusable standalone script
uv add --script ~/.local/bin/my-script requests rich

# Install Python CLI tools globally, each in its own isolated uv env
uv tool install ruff
uv tool install ipython
```

Avoid installing packages into the uv-managed base Python. Prefer script metadata, `uv run --with`, or `uv tool install`.

## how to add new things

1 - add the new thing to the appropriate bash profile

2 - merge into master

3 - pull down the newest changes from the dotfiles repo on your computer

4 - reload any open terminals to get the changes
