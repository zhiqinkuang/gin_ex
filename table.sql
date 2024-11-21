CREATE TABLE activity(
                         id INT AUTO_INCREMENT PRIMARY KEY, -- 主键，自增
                         name VARCHAR(255) NOT NULL,        -- 名称字段，最大长度255，不能为空
                         add_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- 添加时间，默认当前时间
);

CREATE TABLE player (
                        id INT(11) NOT NULL AUTO_INCREMENT COMMENT '编号',            -- 主键，自增
                        aid INT(11) NOT NULL COMMENT '所属排名活动',                  -- 活动 ID
                        ref VARCHAR(50) DEFAULT NULL COMMENT '昵称',                  -- 外部引用
                        nickname VARCHAR(100) DEFAULT NULL COMMENT '昵称',            -- 昵称
                        declaration VARCHAR(255) DEFAULT NULL COMMENT '宣言',         -- 宣言
                        avatar VARCHAR(255) DEFAULT NULL COMMENT '头像',              -- 头像
                        score INT(11) DEFAULT 0 COMMENT '分数',                       -- 分数
                        add_time INT(11) DEFAULT 0 COMMENT '添加时间',                -- 添加时间
                        update_time INT(11) DEFAULT 0 COMMENT '更新时间',             -- 更新时间
                        PRIMARY KEY (id)                                              -- 定义主键
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='玩家表';
