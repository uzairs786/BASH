# 📏 Parameters

Parameters let you pass inputs into a script to make it flexible and interactive

- It is provided **after the script name** when running it
- `./script.sh hello hi hey`
- Within the script:

- `echo "parameter 1: $1"` > `hello` > `$1`
- `echo "parameter 2: $2"` > `hi` > `$2`
- `echo "parameter 3: $3"` > `hey` > `$3`

## Access all Parameters

Instead of numbering each parameter, you can access all parameters:

- `echo "all parameters: $@"` > grabs ALL parameters passed to the script

## 🔷 Important Notes

- Parameters are space-separated
- You can pass as many as needed, accessed by `$1`,`$2`,`$3`
