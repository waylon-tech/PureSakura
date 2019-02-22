USE puresakura;
DROP TABLE `puresakura`.`borrows`;
DROP TABLE `puresakura`.`readers`;
DROP TABLE `puresakura`.`books`;

CREATE TABLE `puresakura`.`readers` (
  `rid` VARCHAR(50) NOT NULL,
  `rname` VARCHAR(50) NOT NULL,
  `rsex` TINYINT NOT NULL,
  `remail` VARCHAR(50) NOT NULL,
  `rrole` VARCHAR(50) NOT NULL,
  `radmin` TINYINT NULL DEFAULT 0,
  PRIMARY KEY (`rid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE `puresakura`.`books` (
  `bid` VARCHAR(50) NOT NULL,
  `btitle` VARCHAR(50) NOT NULL,
  `bauthor` VARCHAR(50) NOT NULL,
  `bpublisher` VARCHAR(50) NOT NULL,
  `bpublished_at` REAL NULL DEFAULT 0,
  `bsort` VARCHAR(50) NOT NULL,
  `bread_times` INT NULL DEFAULT 0,
  `bexits` TINYINT NOT NULL,
  PRIMARY KEY (`bid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE `puresakura`.`borrows` (
  `id` VARCHAR(50) NOT NULL,
  `rid` VARCHAR(50) NOT NULL,
  `bid` VARCHAR(50) NOT NULL,
  `bborrow_time` REAL NULL DEFAULT '0',
  `bdue_time` REAL NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  INDEX `rid_idx` (`rid` ASC) VISIBLE,
  CONSTRAINT `rid`
    FOREIGN KEY (`rid`)
    REFERENCES `puresakura`.`readers` (`rid`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `bid`
    FOREIGN KEY (`bid`)
    REFERENCES `puresakura`.`books` (`bid`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

INSERT INTO books(bid, btitle, bauthor, bpublisher, bpublished_at, bsort, bread_times, bexits) VALUES ('001', '三体I', '刘慈欣', '重庆出版社', 1199145549, '文学', 824, true);
INSERT INTO books(bid, btitle, bauthor, bpublisher, bpublished_at, bsort, bread_times, bexits) VALUES ('002', '三体II', '刘慈欣', '重庆出版社', 1464739149, '文学', 712, true);
INSERT INTO books(bid, btitle, bauthor, bpublisher, bpublished_at, bsort, bread_times, bexits) VALUES ('003', '三体III', '刘慈欣', '重庆出版社', 1464739149, '文学', 710, true);
INSERT INTO books(bid, btitle, bauthor, bpublisher, bpublished_at, bsort, bread_times, bexits) VALUES ('004', '月亮与六便士', '[英]威廉·萨默塞特·毛姆', '中国友谊出版社', 1433116749, '文学', 622, true);
INSERT INTO books(bid, btitle, bauthor, bpublisher, bpublished_at, bsort, bread_times, bexits) VALUES ('005', '深度思考:不断逼近问题的本质', '[美]莫琳·希凯', '江苏凤凰文艺出版社', 1535759949, '心理自助', 601, true);
INSERT INTO books(bid, btitle, bauthor, bpublisher, bpublished_at, bsort, bread_times, bexits) VALUES ('006', '我的第一本专注力训练书', '周逢俊', '人民美术出版社', 1427846349, '游戏益智', 588, true);
INSERT INTO books(bid, btitle, bauthor, bpublisher, bpublished_at, bsort, bread_times, bexits) VALUES ('007', '高难度沟通', '[美]贾森·杰伊,[美]加布里埃尔·格兰特', '中国友谊出版公司', 1512086349, '心理自助', 579, true);
INSERT INTO books(bid, btitle, bauthor, bpublisher, bpublished_at, bsort, bread_times, bexits) VALUES ('008', '海尔管理学:原则与框架', '姜奇平', '中国财富出版社', 1541030349, '心理自助', 566, true);
INSERT INTO books(bid, btitle, bauthor, bpublisher, bpublished_at, bsort, bread_times, bexits) VALUES ('009', '浮生六记', '沈复生', '安徽文艺出版社', 1041379149, '文学', 552, true);
INSERT INTO books(bid, btitle, bauthor, bpublisher, bpublished_at, bsort, bread_times, bexits) VALUES ('010', '薛兆丰经济学讲义', '薛兆丰', '中信出版集团', 1530403149, '经济与管理', 523, true);
INSERT INTO books(bid, btitle, bauthor, bpublisher, bpublished_at, bsort, bread_times, bexits) VALUES ('011', '不一样的卡梅拉', '[法]克利斯提昂·约里波瓦', '民族出版社', 1519862349, '卡通/漫画/绘本', 508, true);
INSERT INTO books(bid, btitle, bauthor, bpublisher, bpublished_at, bsort, bread_times, bexits) VALUES ('012', '罗生门', '[日]芥川龙之介', '四川文艺出版社', 1514736000, '文学', 423, true);
INSERT INTO books(bid, btitle, bauthor, bpublisher, bpublished_at, bsort, bread_times, bexits) VALUES ('013', '流浪地球', '刘慈欣', '长江文艺出版社', 1225468800, '文学', 415, true);
INSERT INTO books(bid, btitle, bauthor, bpublisher, bpublished_at, bsort, bread_times, bexits) VALUES ('014', '显微镜下的大明', '马伯庸', '湖南文艺出版社', 1143820800, '传记',387, true);
INSERT INTO books(bid, btitle, bauthor, bpublisher, bpublished_at, bsort, bread_times, bexits) VALUES ('015', '墨菲定律', '李原', '中国华侨出版社', 1414771200, '心理自助', 411, true);
INSERT INTO books(bid, btitle, bauthor, bpublisher, bpublished_at, bsort, bread_times, bexits) VALUES ('016', '漫长的告别', '[美]雷蒙德·钱德勒', '中信出版集团股份有限公司', 1143820800, '传记',387, true);
INSERT INTO books(bid, btitle, bauthor, bpublisher, bpublished_at, bsort, bread_times, bexits) VALUES ('017', '人类简史', '[以]尤瓦尔·赫拉利', '中信出版集团', 1541001600, '学术文化',364, true);
INSERT INTO books(bid, btitle, bauthor, bpublisher, bpublished_at, bsort, bread_times, bexits) VALUES ('018', '小屁孩树屋历险记', '[澳]安迪·格里菲思', '长江少年儿童出版社', 1430409600, '少儿文学',302, true);