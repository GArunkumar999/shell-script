Here are **industry-level best practices** with clear explanations 👇

---

# ✅ 1. Always Start With the Correct Shebang

```bash
#!/usr/bin/env bash
```

### Why?

* Ensures the script runs with Bash
* More portable across systems than `#!/bin/bash`
* Avoids running with `sh` accidentally

---

# ✅ 2. Enable Strict Mode (VERY IMPORTANT)

Add this at the top:

```bash
set -euo pipefail
```

### What it does:

* `-e` → Exit immediately if a command fails
* `-u` → Error on undefined variables
* `-o pipefail` → Fail if any command in pipeline fails

### Why?

Prevents silent failures in production pipelines (especially in CI/CD like Jenkins).

---

# ✅ 3. Use Meaningful Variable Names

❌ Bad:

```bash
a=prod
```

✅ Good:

```bash
ENVIRONMENT="production"
```

### Why?

Improves readability and maintainability.

---

# ✅ 4. Always Quote Variables

❌ Bad:

```bash
rm -rf $DIR
```

✅ Good:

```bash
rm -rf "$DIR"
```

### Why?

Prevents:

* Word splitting
* Unexpected globbing (`*`)
* Accidental file deletion

This is critical in automation environments.

---

# ✅ 5. Use Functions for Reusability

```bash
deploy_app() {
  echo "Deploying application..."
}
```

### Why?

* Modular code
* Easy debugging
* Reusable logic

---

# ✅ 6. Add Error Handling

Example:

```bash
if ! aws s3 ls "$BUCKET_NAME"; then
  echo "Bucket does not exist"
  exit 1
fi
```

### Why?

Fail fast and provide meaningful messages.

---

# ✅ 7. Use Logging Instead of Only echo

Better practice:

```bash
log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}
```

### Why?

* Useful in production
* Easier debugging in CI logs

---

# ✅ 8. Validate Input Parameters

```bash
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <environment>"
  exit 1
fi
```

### Why?

Prevents script misuse in pipelines.

---

# ✅ 9. Use Exit Codes Properly

```bash
exit 0   # Success
exit 1   # Failure
```

### Why?

CI/CD tools like Jenkins depend on exit codes.

---

# ✅ 10. Avoid Hardcoding Values

❌ Bad:

```bash
REGION="us-east-1"
```

✅ Better:

```bash
REGION="${AWS_REGION:-us-east-1}"
```

### Why?

Makes scripts reusable across environments.

---

# ✅ 11. Use `[[ ]]` Instead of `[ ]`

```bash
if [[ "$ENV" == "prod" ]]; then
```

### Why?

* Safer string comparison
* Better regex support
* Prevents unexpected behavior

---

# ✅ 12. Use Trap for Cleanup

```bash
cleanup() {
  echo "Cleaning up..."
}
trap cleanup EXIT
```

### Why?

Ensures cleanup even if script fails.

Very useful in:

* Docker build scripts
* Temp file handling
* Deployment rollbacks

---

# ✅ 13. Follow Proper Indentation & Formatting

* 2 or 4 spaces consistently
* Keep functions separated
* Avoid very long scripts (split logically)

---

# ✅ 14. Comment Properly (But Don’t Overcomment)

```bash
# Deploy application to Kubernetes cluster
kubectl apply -f deployment.yaml
```

Explain **why**, not obvious things.

---

# ✅ 15. Use ShellCheck (Professional Tip)

Use:

```
shellcheck script.sh
```

### Why?

* Finds bugs
* Detects bad practices
* Industry standard linting tool

---

# ✅ 16. Avoid Useless Use of `cat`

❌ Bad:

```bash
cat file.txt | grep error
```

✅ Good:

```bash
grep error file.txt
```

---

# ✅ 17. Use Arrays Instead of Space-Separated Strings

```bash
SERVERS=("app1" "app2" "app3")

for server in "${SERVERS[@]}"; do
  echo "$server"
done
```

### Why?

Safer iteration.

---

# ✅ 18. Make Scripts Idempotent (DevOps Critical)

Ensure running the script multiple times does not break system.

Example:

```bash
mkdir -p /app/logs
```

Instead of:

```bash
mkdir /app/logs
```

---

# ✅ 19. Keep Secrets Out of Scripts

❌ Never:

```bash
PASSWORD="mypassword"
```

✅ Use:

* Environment variables
* AWS Secrets Manager
* Vault

---

# ✅ 20. Use `readonly` for Constants

```bash
readonly SCRIPT_NAME=$(basename "$0")
```

Prevents accidental modification.

---

# 🔥 Bonus: Production Script Template

```bash
#!/usr/bin/env bash
set -euo pipefail

readonly SCRIPT_NAME=$(basename "$0")

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

cleanup() {
  log "Cleaning up..."
}
trap cleanup EXIT

main() {
  log "Starting script..."
}

main "$@"
```

