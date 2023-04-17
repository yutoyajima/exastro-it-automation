-- ログレベル管理
CREATE TABLE T_COMN_LOGLEVEL
(
    PRIMARY_KEY                     VARCHAR(40),                                -- 主キー
    SERVICE_NAME                    VARCHAR(255),                               -- サービス名
    LOG_LEVEL                       VARCHAR(255),                               -- ログレベル
    NOTE                            TEXT,                                       -- 備考
    DISUSE_FLAG                     VARCHAR(1)  ,                               -- 廃止フラグ
    LAST_UPDATE_TIMESTAMP           DATETIME(6),                                -- 最終更新日時
    LAST_UPDATE_USER                VARCHAR(40),                                -- 最終更新者
    PRIMARY KEY(PRIMARY_KEY)
)ENGINE = InnoDB, CHARSET = utf8mb4, COLLATE = utf8mb4_bin, ROW_FORMAT=COMPRESSED ,KEY_BLOCK_SIZE=8;




-- バージョン情報
CREATE TABLE T_COMN_VERSION
(
    SERVICE_ID                      VARCHAR(40),                                -- UUID
    VERSION                         VARCHAR(32),                                -- バージョン
    INSTALLED_DRIVER_JA             TEXT,                                       -- インストール済ドライバ(ja)
    INSTALLED_DRIVER_EN             TEXT,                                       -- インストール済ドライバ(en)
    NOTE                            TEXT,                                       -- 備考
    DISUSE_FLAG                     VARCHAR(1),                                 -- 廃止フラグ
    LAST_UPDATE_TIMESTAMP           DATETIME(6),                                -- 最終更新日時
    LAST_UPDATE_USER                VARCHAR(40),                                -- 最終更新者
    PRIMARY KEY(SERVICE_ID)
)ENGINE = InnoDB, CHARSET = utf8mb4, COLLATE = utf8mb4_bin, ROW_FORMAT=COMPRESSED ,KEY_BLOCK_SIZE=8;




-- インデックス
CREATE INDEX IND_T_COMN_LOGLEVEL_01 ON T_COMN_LOGLEVEL (SERVICE_NAME);
CREATE INDEX IND_T_COMN_LOGLEVEL_02 ON T_COMN_LOGLEVEL (DISUSE_FLAG);



-- 初期値
INSERT INTO `T_COMN_LOGLEVEL` (`PRIMARY_KEY`, `SERVICE_NAME`, `LOG_LEVEL`, `NOTE`, `DISUSE_FLAG`, `LAST_UPDATE_TIMESTAMP`, `LAST_UPDATE_USER`) VALUES ('1', 'ita-api-admin', 'INFO', NULL, '0', CURRENT_TIMESTAMP, null);
INSERT INTO `T_COMN_LOGLEVEL` (`PRIMARY_KEY`, `SERVICE_NAME`, `LOG_LEVEL`, `NOTE`, `DISUSE_FLAG`, `LAST_UPDATE_TIMESTAMP`, `LAST_UPDATE_USER`) VALUES ('2', 'ita-api-organization', 'INFO', NULL, '0', CURRENT_TIMESTAMP, null);
INSERT INTO `T_COMN_LOGLEVEL` (`PRIMARY_KEY`, `SERVICE_NAME`, `LOG_LEVEL`, `NOTE`, `DISUSE_FLAG`, `LAST_UPDATE_TIMESTAMP`, `LAST_UPDATE_USER`) VALUES ('3', 'ita-by-ansible-execute', 'INFO', NULL, '0', CURRENT_TIMESTAMP, null);
INSERT INTO `T_COMN_LOGLEVEL` (`PRIMARY_KEY`, `SERVICE_NAME`, `LOG_LEVEL`, `NOTE`, `DISUSE_FLAG`, `LAST_UPDATE_TIMESTAMP`, `LAST_UPDATE_USER`) VALUES ('4', 'ita-by-ansible-legacy-role-vars-listup', 'INFO', NULL, '0', CURRENT_TIMESTAMP, null);
INSERT INTO `T_COMN_LOGLEVEL` (`PRIMARY_KEY`, `SERVICE_NAME`, `LOG_LEVEL`, `NOTE`, `DISUSE_FLAG`, `LAST_UPDATE_TIMESTAMP`, `LAST_UPDATE_USER`) VALUES ('5', 'ita-by-ansible-legacy-vars-listup', 'INFO', NULL, '0', CURRENT_TIMESTAMP, null);
INSERT INTO `T_COMN_LOGLEVEL` (`PRIMARY_KEY`, `SERVICE_NAME`, `LOG_LEVEL`, `NOTE`, `DISUSE_FLAG`, `LAST_UPDATE_TIMESTAMP`, `LAST_UPDATE_USER`) VALUES ('6', 'ita-by-ansible-pioneer-vars-listup', 'INFO', NULL, '0', CURRENT_TIMESTAMP, null);
INSERT INTO `T_COMN_LOGLEVEL` (`PRIMARY_KEY`, `SERVICE_NAME`, `LOG_LEVEL`, `NOTE`, `DISUSE_FLAG`, `LAST_UPDATE_TIMESTAMP`, `LAST_UPDATE_USER`) VALUES ('7', 'ita-by-ansible-towermaster-sync', 'INFO', NULL, '0', CURRENT_TIMESTAMP, null);
INSERT INTO `T_COMN_LOGLEVEL` (`PRIMARY_KEY`, `SERVICE_NAME`, `LOG_LEVEL`, `NOTE`, `DISUSE_FLAG`, `LAST_UPDATE_TIMESTAMP`, `LAST_UPDATE_USER`) VALUES ('8', 'ita-by-cicd-for-iac', 'INFO', NULL, '0', CURRENT_TIMESTAMP, null);
INSERT INTO `T_COMN_LOGLEVEL` (`PRIMARY_KEY`, `SERVICE_NAME`, `LOG_LEVEL`, `NOTE`, `DISUSE_FLAG`, `LAST_UPDATE_TIMESTAMP`, `LAST_UPDATE_USER`) VALUES ('9', 'ita-by-collector', 'INFO', NULL, '0', CURRENT_TIMESTAMP, null);
INSERT INTO `T_COMN_LOGLEVEL` (`PRIMARY_KEY`, `SERVICE_NAME`, `LOG_LEVEL`, `NOTE`, `DISUSE_FLAG`, `LAST_UPDATE_TIMESTAMP`, `LAST_UPDATE_USER`) VALUES ('10', 'ita-by-conductor-regularly', 'INFO', NULL, '0', CURRENT_TIMESTAMP, null);
INSERT INTO `T_COMN_LOGLEVEL` (`PRIMARY_KEY`, `SERVICE_NAME`, `LOG_LEVEL`, `NOTE`, `DISUSE_FLAG`, `LAST_UPDATE_TIMESTAMP`, `LAST_UPDATE_USER`) VALUES ('11', 'ita-by-conductor-synchronize', 'INFO', NULL, '0', CURRENT_TIMESTAMP, null);
INSERT INTO `T_COMN_LOGLEVEL` (`PRIMARY_KEY`, `SERVICE_NAME`, `LOG_LEVEL`, `NOTE`, `DISUSE_FLAG`, `LAST_UPDATE_TIMESTAMP`, `LAST_UPDATE_USER`) VALUES ('12', 'ita-by-excel-export-import', 'INFO', NULL, '0', CURRENT_TIMESTAMP, null);
INSERT INTO `T_COMN_LOGLEVEL` (`PRIMARY_KEY`, `SERVICE_NAME`, `LOG_LEVEL`, `NOTE`, `DISUSE_FLAG`, `LAST_UPDATE_TIMESTAMP`, `LAST_UPDATE_USER`) VALUES ('13', 'ita-by-execinstance-dataautoclean', 'INFO', NULL, '0', CURRENT_TIMESTAMP, null);
INSERT INTO `T_COMN_LOGLEVEL` (`PRIMARY_KEY`, `SERVICE_NAME`, `LOG_LEVEL`, `NOTE`, `DISUSE_FLAG`, `LAST_UPDATE_TIMESTAMP`, `LAST_UPDATE_USER`) VALUES ('14', 'ita-by-file-autoclean', 'INFO', NULL, '0', CURRENT_TIMESTAMP, null);
INSERT INTO `T_COMN_LOGLEVEL` (`PRIMARY_KEY`, `SERVICE_NAME`, `LOG_LEVEL`, `NOTE`, `DISUSE_FLAG`, `LAST_UPDATE_TIMESTAMP`, `LAST_UPDATE_USER`) VALUES ('15', 'ita-by-hostgroup-split', 'INFO', NULL, '0', CURRENT_TIMESTAMP, null);
INSERT INTO `T_COMN_LOGLEVEL` (`PRIMARY_KEY`, `SERVICE_NAME`, `LOG_LEVEL`, `NOTE`, `DISUSE_FLAG`, `LAST_UPDATE_TIMESTAMP`, `LAST_UPDATE_USER`) VALUES ('16', 'ita-by-menu-create', 'INFO', NULL, '0', CURRENT_TIMESTAMP, null);
INSERT INTO `T_COMN_LOGLEVEL` (`PRIMARY_KEY`, `SERVICE_NAME`, `LOG_LEVEL`, `NOTE`, `DISUSE_FLAG`, `LAST_UPDATE_TIMESTAMP`, `LAST_UPDATE_USER`) VALUES ('17', 'ita-by-menu-export-import', 'INFO', NULL, '0', CURRENT_TIMESTAMP, null);
INSERT INTO `T_COMN_LOGLEVEL` (`PRIMARY_KEY`, `SERVICE_NAME`, `LOG_LEVEL`, `NOTE`, `DISUSE_FLAG`, `LAST_UPDATE_TIMESTAMP`, `LAST_UPDATE_USER`) VALUES ('18', 'ita-by-terraform-cli-execute', 'INFO', NULL, '0', CURRENT_TIMESTAMP, null);
INSERT INTO `T_COMN_LOGLEVEL` (`PRIMARY_KEY`, `SERVICE_NAME`, `LOG_LEVEL`, `NOTE`, `DISUSE_FLAG`, `LAST_UPDATE_TIMESTAMP`, `LAST_UPDATE_USER`) VALUES ('19', 'ita-by-terraform-cli-vars-listup', 'INFO', NULL, '0', CURRENT_TIMESTAMP, null);
INSERT INTO `T_COMN_LOGLEVEL` (`PRIMARY_KEY`, `SERVICE_NAME`, `LOG_LEVEL`, `NOTE`, `DISUSE_FLAG`, `LAST_UPDATE_TIMESTAMP`, `LAST_UPDATE_USER`) VALUES ('20', 'ita-by-terraform-cloud-ep-execute', 'INFO', NULL, '0', CURRENT_TIMESTAMP, null);
INSERT INTO `T_COMN_LOGLEVEL` (`PRIMARY_KEY`, `SERVICE_NAME`, `LOG_LEVEL`, `NOTE`, `DISUSE_FLAG`, `LAST_UPDATE_TIMESTAMP`, `LAST_UPDATE_USER`) VALUES ('21', 'ita-by-terraform-cloud-ep-vars-listup', 'INFO', NULL, '0', CURRENT_TIMESTAMP, null);
INSERT INTO T_COMN_VERSION (SERVICE_ID,VERSION,INSTALLED_DRIVER_JA,INSTALLED_DRIVER_EN,NOTE,DISUSE_FLAG,LAST_UPDATE_TIMESTAMP,LAST_UPDATE_USER) VALUES(1,'2.1.0','["パラメータシート作成","ホストグループ","Ansible","Terraform-Cloud/EP","Terraform-CLI","CI/CD"]','["Parameter sheet Create","Hostgroup","Ansible","Terraform-Cloud/EP","Terraform-CLI","CI/CD"]',NULL,'0',CURRENT_TIMESTAMP,1);


