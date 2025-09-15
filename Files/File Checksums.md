# 🔑 File Checksums in Bash

File checksums are **cryptographic hashes** that act like a file’s **digital fingerprint**.
They are used to verify **integrity** and **authenticity** — ensuring a file hasn’t been tampered with.

---

## 🧠 Key Concepts

* **Checksum = Unique value** generated from file content.
* **Use cases:**

  * Verify integrity after download.
  * Detect file tampering or corruption.
  * Compare files across systems.

---

## 📝 Example 1: Generate MD5 Checksum

```bash
#!/usr/bin/env bash

calculate_md5sum() {
  local file_path=$1
  md5sum "$file_path"
}

calculate_md5sum "read.txt"
```

> **Note:** On macOS, install `md5sum` with:

```bash
brew install md5sha1sum
```

---

## 📝 Example 2: Generate SHA256 Checksum

```bash
calculate_sha256sum() {
  local file_path=$1
  sha256sum "$file_path"
}

calculate_sha256sum "read.txt"
```

> **Tip:** SHA256 is considered more secure than MD5 and is widely used for file verification.

---

## 📝 Example 3: Compare Checksums

```bash
compare_checksums() {
  local checksum1=$1
  local checksum2=$2

  if [[ "$checksum1" == "$checksum2" ]]; then
    echo "✅ Checksums match – file is intact."
  else
    echo "❌ Checksums do not match – file integrity compromised!"
  fi
}

# Example usage (demo values)
compare_checksums "123" "1234"
```

---

## 💡 Key Takeaways

| **Command**                  | **Purpose**                                            |
| ---------------------------- | ------------------------------------------------------ |
| `md5sum file`                | Generate MD5 hash (fast but weaker security)           |
| `sha256sum file`             | Generate SHA256 hash (stronger and preferred)          |
| `compare_checksums` function | Quickly compare two checksum values and print a result |

* ✅ **Install checksum tools** (`md5sum`, `sha256sum`) before use (especially on macOS).
* ✅ **Use SHA256** when possible for better security.
* ✅ **Automate comparison** in scripts to avoid manually checking long hash strings.

---

Would you like me to include a **practical example** showing how to use checksums to verify a downloaded file (e.g. comparing against a published checksum from a software provider)? This is a very common real-world use case.
