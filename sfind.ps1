function sfind {
param(
    [string] $stringToFind
    ) 

    $input | select-string -Pattern $stringToFind
}

node --v8-options | sfind _code*