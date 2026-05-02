import os
import subprocess

for root, dirs, files in os.walk("."):
    for file in files:
        if file.endswith(".sh"):
            path = os.path.join(root, file)
            subprocess.run(
                ["git", "update-index", "--chmod=+x", path],
                check=True
            )