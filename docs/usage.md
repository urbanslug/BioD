# BioD usage

Currently BioD doesn't compile into a stand alone library.
You therefore have to clone it and pass the compiler it's path.

## Running examples

```
cd examples
```

```
rdmd -I.. calculate_gc_content_from_reference.d
```

## Use BioD
```
dmd -i -I<path to BioD> calculate_gc_content_from_reference.d
```

## Use BioD and compile and optimised binary
```
dmd -i -O -release -inline -boundscheck=off -I<path-to-BioD> calculate_gc_content_from_reference.d
```

## Calling C libraries
```
dmd -L-L<path-to-dir-with-C-lib> -L-<library-name> -run your_file.d
```

## Compiling BioD as a stand alone library
```

```

## Build a standalone library
```
dub # to build the library

dmd your_file.d -L=<path-to-biod>/libbiod.a

or

dmd -L-L<path-to-biod> -L-lbiod -run your_file.d
```
