To install **Bazel**, follow the instructions based on your operating system:

### For **Linux**:

1. **Add the Bazel distribution URI to your package manager:**

   ```bash
   sudo apt update && sudo apt install apt-transport-https curl gnupg -y
   curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor >bazel-archive-keyring.gpg
   sudo mv bazel-archive-keyring.gpg /usr/share/keyrings
   sudo apt update
   ```

2. **Install Bazel:**

   ```bash
   sudo apt install bazel
   ```

3. **Install Bazel version (optional, to install a specific version):**

   ```bash
   sudo apt install bazel-<version>
   ```

4. **Verify installation:**
   ```bash
   bazel --version
   ```

### For **macOS**:

1. **Install using Homebrew** (recommended):

   ```bash
   brew install bazel
   ```

2. **Verify installation:**
   ```bash
   bazel --version
   ```

### For **Windows**:

1. **Download the Bazel installer**:
   Go to the [Bazel releases page](https://github.com/bazelbuild/bazel/releases) and download the latest Windows `.exe` installer.

2. **Run the installer** and follow the prompts.

3. **Add Bazel to the PATH** (if not done automatically):

   - Open **System Properties > Advanced > Environment Variables**.
   - Add `C:\Program Files\Bazel\bin` to your `Path` variable.

4. **Verify installation**:
   Open a new Command Prompt and run:
   ```bash
   bazel --version
   ```

### For **Docker**:

If you prefer to use Bazel in a Docker container, you can run:

```bash
docker pull bazel/bazel:latest
docker run -it bazel/bazel:latest
```

Once installed, you can use Bazel to build and test your code using the `bazel` command.
