#!/bin/bash
ssh -L 8001:127.0.0.1:8080 test@test.com -p 22
ssh -L 8002:127.0.0.1:3306 test@test.com -p 22
ssh -L 8003:127.0.0.1:1521 test@test.com -p 22
