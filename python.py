import os
import subprocess
from pathlib import Path

def install_git():
  try:
      subprocess.run(["git", "version"], check=True)
  except subprocess.CalledProcessError:
      print("Git is not installed. Installing Git...")
      subprocess.run(["sudo", "apt-get", "update"])
    subprocess.run(["sudo", "apt-get", "install", "-y", "git"])
