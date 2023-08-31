# Utils

- `vault secrets list`
- `vault secrets enable -path=<path> kv`
- `vault auth enable -path=<path> userpass`
- `vault policy list`
- `vault login -method=userpass username=<username> -path=<path>`

## Write policy

```bash
vault policy write production - << EOF
path "<path>/*" {
  capabilities = ["create", "read", "update", "patch", "delete", "list"]
}
EOF
```
