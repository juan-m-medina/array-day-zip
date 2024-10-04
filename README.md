# Samples

## Parse an environment file into an array of key/value hashes

This example reads the `sample.env` file into an array of hashes.
```shell
ruby sample.rb
```

## Parse a fixed column size file into a hash
- Uses the first row as the origin for the hash key names.
- Zip works well here because each row is a file of this type is designed so there are as many data points per entry as row headers.

### Run without zip (to compare code)
```shell
ruby regular_fixed_file.rb --file_name "fixed.txt"
```

### Run with zip 
```shell
ruby zip_fixed_file.rb --file_name "fixed.txt"
```
