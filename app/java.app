################################
# Java
################################

kafka-manager
=============================
https://github.com/yahoo/kafka-manager

--下载
$ cd /opt/github
$ git clone https://github.com/yhli365/kafka-manager
$ cd kafka-manager/

--管理分支
$ git branch -a
$ git tag
1.首次使用新建分支
$ git checkout -b 1.3.0.4_br 1.3.0.4
$ git push --set-upstream origin 1.3.0.4_br
2.如果远程分支已存在则复制远程分支
$ git checkout -b 1.3.0.4_br origin/1.3.0.4_br

--编译版本
$ git checkout 1.3.0.4_br
1.Package zip
$ sbt clean dist
2.Package rpm
$ sbt rpm:packageBin

