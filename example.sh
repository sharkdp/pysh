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
