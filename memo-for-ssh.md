```sh
# build
docker build -t hoge-ssh .

# run
docker run -it --name nyan -p 1200:22 --rm hoge-ssh
```



- https://code.visualstudio.com/docs/remote/ssh
- コマンドパレットを開いて + F1

- ~/.ssh/config で以下みたいな感じに設定すれば少なくともremote sshfsは動きそう

```
Host localhost
  HostName localhost
  IdentityFile ~/Desktop/fs-playground/id_ed
  User root
  Port 1200
```
