# 数据库设计信息-校友管理系统

# 2024/5/10说明：该仓库是过时版本，请忽略

## 2023/4/16



### 快速开始

- 配置在实验室服务器IP: **192.168.1.141**
- 端口: **13306** （注意不是3306）
- MySQL用户名: **root**	密码: **123456**
- 用Navicat或SQLyog或MySQL Workbench等客户端软件进行连接



### 技术信息

- Linux服务器上安装Docker 23.0.3，在Docker上安装MySQL 5.7
>Docker安装MySQL的优点是快速、隔离性好、可以安装无数个MySQL实例，互相不干扰，只要映射主机端口不同即可，占用资源少。而且后续Redis等也可以安装在Docker中，统一管理。

- 字符集编码为UTF-8



### 具体设计

#### 1. 需求分析



#### 2. 数据库设计

##### 	1) 概念数据模型 E-R图

  抽取实体

  分析属性

  分析实体之间的关系




##### 	2) 物理数据模型 MySQL表
  - 物理数据模型包含了E-R图的信息，故没有单独的E-R图
  - **外键**会影响数据库性能，所以采用逻辑外键，不用真实外键


![物理数据模型](./assets/物理数据模型20230416.png)



##### 	3) SQL语句
- .sql文件：[txt](./SQL/ams20230416.sql)