# pysh
Python-enhanced bash scripts.

`pysh` allows you to write bash scripts that include short snippets of Python
code with a local environment that is shared between bash and Python.

## Example
Lines that start with `#> ` are evaluated as Python:
```bash
##### From bash to python #####

bashVariable="Hello world"
#> print("{} from python!".format(bashVariable))


##### From python to bash #####

#> pythonVariable = " ".join(["Hello", "world"])
echo "$pythonVariable from bash!"


######## Back and forth #######

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
dummy.csv  important.csv  example.sh

> pysh example.sh
Hello world from python!
Hello world from bash!

before: dummy.csv
after:  DUMMY.csv

before: important.csv
after:  IMPORTANT.csv
```

## Caveats

This is only supported for Python 3.4 and above due to `redirect_stdout`.

## Disclaimer / warning
This is a prototype implementation with lots of evil hacks.
