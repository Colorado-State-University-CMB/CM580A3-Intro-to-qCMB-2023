# Anatomy of the PROMPT
```
david@Cumbernauld /Users/david %
```


```
user  computer     working
       name        directory
----- ----------- ------------ -
david@Cumbernauld /Users/david %
                                 ---------
                                 ^^type here^^
                               
```

It is somewhat configurable, but the default setting is usually fine. 

Try some commands to see where the information comes from:

```
david@Cumbernauld /Users/david % whoami
david
david@Cumbernauld /Users/david % hostname
Cumbernauld.local
david@Cumbernauld /Users/david % pwd
/Users/david
```

This information is also stored in environmental variables. 

Use these commands to access them:

```
david@Cumbernauld /Users/david % echo $USER
david
david@Cumbernauld /Users/david % echo $HOST
Cumbernauld.local
david@Cumbernauld /Users/david % echo $PWD
/Users/david
```

