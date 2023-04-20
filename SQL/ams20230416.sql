/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2023/4/16 17:18:20                           */
/*==============================================================*/


drop table if exists admin;

drop table if exists alumnus_basic;

drop table if exists donation;

drop table if exists donation_img;

drop table if exists home_img;

drop table if exists notification;

/*==============================================================*/
/* Table: admin                                                 */
/*==============================================================*/
create table admin
(
   id                   bigint not null auto_increment comment 'id',
   admin_name           varchar(64) comment '管理员名',
   admin_password       varchar(64) comment '密码',
   admin_authority      tinyint comment '权限',
   admin_create_time    datetime comment '注册时间',
   primary key (id)
);

alter table admin comment '管理员信息';

/*==============================================================*/
/* Table: alumnus_basic                                         */
/*==============================================================*/
create table alumnus_basic
(
   id                   bigint not null auto_increment comment 'id',
   alu_name             varchar(64) not null comment '姓名',
   alu_id               varchar(64) not null comment '学号',
   gender               tinyint comment '性别',
   alu_former_name      varchar(64) comment '曾用名',
   id_card              varchar(64) comment '身份证号',
   nationality          varchar(64) comment '民族',
   political_status     varchar(64) comment '政治面貌',
   email                varchar(64) comment '邮箱',
   native_place         varchar(64) comment '籍贯',
   clazz                varchar(64) comment '班级',
   admission_time       date comment '入学时间',
   graduation_time      date comment '毕业时间',
   department           varchar(64) comment '院系',
   major                varchar(64) comment '专业',
   degree_stage         tinyint comment '阶段',
   phone_num            varchar(64) comment '手机',
   mailing_address      varchar(500) comment '通信地址',
   city                 varchar(200) comment '所在城市',
   work_unit            varchar(200) comment '工作单位',
   job_title            varchar(200) comment '担任职务',
   industry_category    varchar(200) comment '行业类别',
   enterprise_property  varchar(200) comment '企业性质',
   birth_date           date comment '出生日期',
   work_phone           varchar(64) comment '工作电话',
   work_address         varchar(200) comment '工作地址',
   qq                   varchar(64) comment 'QQ',
   weibo                varchar(200) comment '微博',
   personal_website     varchar(200) comment '个人网站',
   wechat               varchar(64) comment '微信',
   note                 varchar(500) comment '备注',
   vip                  varchar(64) comment 'vip',
   honors_during_school varchar(500) comment '在校期间荣誉',
   portrait_url         varchar(500) comment '头像地址',
   alu_status           tinyint comment '状态',
   password             varchar(64) comment '密码',
   create_time          datetime comment '注册时间',
   primary key (id)
);

alter table alumnus_basic comment '校友的常用基本信息';

/*==============================================================*/
/* Table: donation                                              */
/*==============================================================*/
create table donation
(
   id                   bigint not null auto_increment comment 'id',
   donation_title       varchar(200) comment '标题',
   donation_content     text comment '新闻内容',
   donation_demand      text comment '捐赠需求',
   donation_status      tinyint comment '状态',
   donation_release_time datetime comment '发布时间',
   donation_update_time datetime comment '更新时间',
   primary key (id)
);

alter table donation comment '捐赠的新闻信息';

/*==============================================================*/
/* Table: donation_img                                          */
/*==============================================================*/
create table donation_img
(
   id                   bigint not null auto_increment comment 'id',
   donation_id          bigint comment '外键-捐赠新闻表',
   donation_img_name    varchar(200) comment '图片名',
   donation_img_url     varchar(500) comment '图片地址',
   donation_img_sort    int comment '顺序',
   donation_img_default tinyint comment '是否默认图（0为不默认，1为默认）',
   primary key (id)
);

alter table donation_img comment '一个捐赠新闻对应多张图片
一张图片对应一个新闻';

/*==============================================================*/
/* Table: home_img                                              */
/*==============================================================*/
create table home_img
(
   id                   bigint not null auto_increment comment 'id',
   home_img_name        varchar(200) comment '图片名',
   home_img_url         varchar(500) comment '图片地址',
   home_img_create_time datetime comment '发布时间',
   home_img_default     tinyint comment '是否默认图（0为不默认，1为默认）',
   primary key (id)
);

alter table home_img comment '首页图片的信息';

/*==============================================================*/
/* Table: notification                                          */
/*==============================================================*/
create table notification
(
   id                   bigint not null auto_increment comment 'id',
   notif_title          varchar(200) comment '标题',
   notif_content        text comment '通知内容',
   notif_status         tinyint comment '状态',
   notif_create_time    datetime comment '发布时间',
   notif_update_time    datetime comment '更新时间',
   primary key (id)
);

alter table notification comment '通知信息';

