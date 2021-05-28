# C++ fuzz target demo

This repo contains the openssl source code (V1.0.1f), which has a Heartbleed security issue([CVE-2014-0160](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2014-0160)), and a [target code](./target.cc), which can reproduce the security issue with fuzzing. 

You can use [FuzzX](https://guardstrikelab.gitbook.io/fuzzx/) platform to run the fuzzing process.

app test
