# ithtl2
本项目采用多模块化项目，基于SpringBoot2.0+Mybatise+SpringCloud Finchley.M9 + MBG自动生成。

# 已完成模块
* 1.服务注册发现(eureka server)（后台管理:8080，服务发现:8761，用户服务:8081）
* 2.微服务调用(feign server)(后台管理系统服务->用户服务查询->返回数据)


# 目录结构
* ithtl2
  * ithtl-cloud-eureka   (服务注册发现)
  * ithtl-common         (公共工具)
     * com.ven
         * util
         * controller
         * config
  * ithtl-system         (后台权限服务)
     * com.ven.system
         * controller
         * entity
         * fservice       (前端Feign服务接口)
         * mapper
         * service
  * ithtl-web            (前端业务接口服务)
    * com.ven.user
        * controller
        * service
        * entity
        * mapper
    