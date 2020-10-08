# Dolibarr

本文档可供使用了 **Dolibarr 镜像** 用户参考，也可以供准备在 **LAMP 镜像** 上自行部署 Dolibarr 参考。

Dolibarr是一个知名的开源ERP/CRM系统，功能包括：产品与服务目录、库存管理、银行账户管理、客户名录、订单管理、商业建议书、合同管理、发票管理、发票与支付管理、制造费用单、运输等，即插即用。[官方演示](https://demo.dolibarr.org/public/demo/)

## 准备

在开始 Dolibarr 的安装部署之前，建议完成如下事情：

* 浏览器访问：*http://公网ip/9panel* ，快速了解镜像的使用
* 查看镜像环境参数，包括：**目录路径、版本、数据库、虚拟主机配置文件等** （[马上查看](https://support.websoft9.com/docs/lamp/zh/stack-components.html)）

## Dolibarr 安装到服务器

**如果你使用的是 *Dolibarr 镜像*，本节请忽略，直接阅读下一节 【Dolibarr 初始化安装向导】**

如果你使用的是 LAMP 镜像，请先将 Dolibarr 安装到服务器，操作步骤如下：

1. 通过域名控制台完成解析域名（增加一个A记录指向服务器IP），并测试是否成功
2. 通过 [phpMyAdmin 登录 MySQL](https://support.websoft9.com/docs/lamp/zh/admin-mysql.html)，为 Dolibarr 系统增加一个数据库，假如名称为：`dolibarr`
3. 到 Dolibarr 官方[下载源码](https://www.dolibarr.org/downloads)
4. 参考[《如何在 LAMP 上增加网站》](https://support.websoft9.com/docs/lamp/zh/solution-deployment.html#安装第二个网站) ，将 Dolibarr 安装到服务器的 [LAMP](https://support.websoft9.com/docs/lamp/zh/) 环境中

---

## Dolibarr 初始化安装向导

1. 本地浏览器访问：*http://域名* 或 *http://公网IP* 进入安装向导（首选域名访问方式）
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/dolibarr/dolibarr-check-websoft9.png)

2. 完成通过许可协议、安装进入环境检测步骤，点击“Start”
3. 安装进入数据库配置界面（[查看数据库账号密码](https://support.websoft9.com/docs/lamp/zh/stack-accounts.html)），然后点击”Next Step”
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/dolibarr/dolibarr-dbconf-websoft9.png)

4. 安装开始验证数据库可用性和安装过程，持续点击“Next Step”
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/dolibarr/dolibarr-confss-websoft9.png)

5. 安装进入管理员账号设置界面，牢记之，点击“Next Step”
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/dolibarr/dolibarr-adminconf-websoft9.png)

6. 系统安装成功
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/dolibarr/dolibarr-installss-websoft9.png)

7. 点击“Go to Dolibarr”登录后台
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/dolibarr/dolibarr-login-websoft9.png)

8. 开始体验后台
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/dolibarr/dolibarr-backend-websoft9.png)

## 常见问题

#### 浏览器打开IP地址，无法访问 Dolibarr（白屏没有结果）？

您的服务器对应的安全组80端口没有开启（入规则），导致浏览器无法访问到服务器的任何内容

#### 本部署包采用的哪个数据库来存储 Dolibarr 数据？

部署包内置 MySQL

#### 是否可以采用云厂商提供的 RDS 来存储 Dolibarr 数据？

可以
