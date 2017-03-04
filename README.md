# pysh
Python-enhanced bash scripts.

**pysh** allows you to write bash scripts that include short snippets of python code
where the local environment is shared between bash and python.

## Example
*hello.sh*:
```bash
# From bash to python

bashVariable="hello world"
#> print(bashVariable + " from python!")

# From python to bash

#> pythonVariable = "hello world"
echo "$pythonVariable from bash!"

for file in *.csv; do
    echo
    echo "before: $file"

    #> base, ext = os.path.splitext(file)
    #> file = base.upper() + ext

    echo "after:  $file"
done
```

Run it:
```
> ls
dummy.csv  important.csv  test.sh

> pysh test.sh            
hello world from python!
hello world from bash!

before: dummy.csv
after:  DUMMY.csv

before: important.csv
after:  IMPORTANT.csv
```

## Disclaimer / warning
This is a prototype implementation with lots of evil hacks.
