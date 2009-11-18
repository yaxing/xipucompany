use xipu;

insert into tbl_Certification values('管理体系认证证书','管理体系认证','./certifications/certification1.jpg',getdate());
insert into tbl_Certification values('确认证书','管理体系认证','./certifications/certification2.jpg',getdate());
insert into tbl_Certification values('工信部通告','通告','./certifications/certification3.jpg',getdate());
insert into tbl_Certification values('工信部通告2','通告','./certifications/certification4.jpg',getdate());
insert into tbl_Certification values('资质证书','资质证书','./certifications/certification5.jpg',getdate());
insert into tbl_Certification values('资质证书','资质证书','./certifications/certification6.jpg',getdate());

insert into tbl_CompanyIntro values('./images/b6.jpg','云南希普防雷工程有限公司成立于1997年，是云南省最早成立的专业防雷公司。公司秉承严谨务实的作风，多年来专心做好服务云南省各类型的防雷工程，创造了综合防雷工程的体系，按照“系统、全面、综合的原则”进行设计施工。为客户创造一个更加安全的防雷环境。是云南省完成大型综合防雷工程最多的公司。'
                                    ,'勘察、评价、设计、施工，是目前云南省防雷设计、施工资质最高的公司之一。','公司汇集了一批高级工程师、工程师及高中级技术人员，在多年的实践中了丰富的勘察、设计、施工经验，能够整合国内外先进防雷科技成果应用于防雷工程，并为客户提供性能可靠、经济适用的防雷设备。'
                                    ,'高层建筑、工业厂区、水塔、物资仓库、易燃易爆产品场所、露天堆场、油库、大型公共场所、邮电通讯和广播电视设施、电站（厂）、变电站、电网、计算机设备及其场地、微电子设备及其他易受雷击的建（构）筑物等防雷设置（设施）的勘察、设计与安装。'
                                    ,'公司通过不断地探索创新，正在进入新的发展时期——集合现代防雷的最新研究成果，形成集防雷设备实验场所、防雷系统管理工程和防雷系统综合评价体系为一体的大型防雷企业。'  
                                   );

insert into tbl_Customer(customerName,introduction,imagePath,addTime) values('玉溪卷烟厂','玉溪卷烟厂','./project_images/1.jpg',getdate());
insert into tbl_Customer(customerName,introduction,imagePath,addTime) values('曲靖卷烟厂','曲靖卷烟厂露天堆场','./project_images/1.jpg',getdate());
insert into tbl_Customer(customerName,introduction,imagePath,addTime) values('昆明市邦克大厦','昆明市邦克大厦防雷工程','./project_images/1.jpg',getdate());
insert into tbl_Customer(customerName,introduction,imagePath,addTime) values('楚雄州政府','昆明市邦克大厦防雷工程','./project_images/2.jpg',getdate());
insert into tbl_Customer(customerName,introduction,imagePath,addTime) values('五华区政府大楼','昆明市邦克大厦防雷工程','./project_images/3.jpg',getdate());
insert into tbl_Customer(customerName,introduction,imagePath,addTime) values('云南烟草公司大楼','昆明市邦克大厦防雷工程','./project_images/4.jpg',getdate());
insert into tbl_Customer(customerName,introduction,imagePath,addTime) values('云南省社会科学院行政楼','昆明市邦克大厦防雷工程','./project_images/5.jpg',getdate());
insert into tbl_Customer(customerName,introduction,imagePath,addTime) values('昆明市第一监狱','昆明市邦克大厦防雷工程','./project_images/6.jpg',getdate());
insert into tbl_Customer(customerName,introduction,imagePath,addTime) values('云南省师范大学附属中学','昆明市邦克大厦防雷工程','./project_images/7.jpg',getdate());
insert into tbl_Customer(customerName,introduction,imagePath,addTime) values('昆明市邦克大厦','昆明市邦克大厦防雷工程','./project_images/6.jpg',getdate());
insert into tbl_Customer(customerName,introduction,imagePath,addTime) values('昆明市邦克大厦','昆明市邦克大厦防雷工程','./project_images/5.jpg',getdate());
insert into tbl_Customer(customerName,introduction,imagePath,addTime) values('昆明市邦克大厦','昆明市邦克大厦防雷工程','./project_images/3.jpg',getdate());
insert into tbl_Customer(customerName,introduction,imagePath,addTime) values('昆明市邦克大厦','昆明市邦克大厦防雷工程','./project_images/1.jpg',getdate());
insert into tbl_Customer(customerName,introduction,imagePath,addTime) values('昆明市邦克大厦','昆明市邦克大厦防雷工程','./project_images/1.jpg',getdate());
insert into tbl_Customer(customerName,introduction,imagePath,addTime) values('昆明市邦克大厦','昆明市邦克大厦防雷工程','./project_images/1.jpg',getdate());
insert into tbl_Customer(customerName,introduction,imagePath,addTime) values('昆明市邦克大厦','昆明市邦克大厦防雷工程','./project_images/1.jpg',getdate());
insert into tbl_Customer(customerName,introduction,imagePath,addTime) values('昆明市邦克大厦','昆明市邦克大厦防雷工程','./project_images/1.jpg',getdate());
insert into tbl_Customer(customerName,introduction,imagePath,addTime) values('昆明市邦克大厦','昆明市邦克大厦防雷工程','./project_images/1.jpg',getdate());


insert into tbl_Documentation values('技术文档1.txt','200eo_1','1','我是技术文档','./Uploaded/技术规范/技术文档2.txt',getdate());
insert into tbl_Documentation values('技术文档2.txt','200eo_1','1','我是技术文档','./Uploaded/技术规范/技术文档9.txt',getdate());
insert into tbl_Documentation values('技术文档3.txt','200eo_1','2','我是技术文档','./Uploaded/安装技术/技术文档5.txt',getdate());
insert into tbl_Documentation values('技术文档4.txt','200eo_1','2','我是技术文档','./Uploaded/安装技术/技术文档8.txt',getdate());
insert into tbl_Documentation values('技术文档5.txt','200eo_1','3','我是技术文档','./Uploaded/参数解释/技术文档3.txt',getdate());
insert into tbl_Documentation values('技术文档6.txt','200eo_1','3','我是技术文档','./Uploaded/参数解释/技术文档6.txt',getdate());
insert into tbl_Documentation values('技术文档7.txt','200eo_1','4','我是技术文档','./Uploaded/典型应用/技术文档7.txt',getdate());
insert into tbl_Documentation values('技术文档8.txt','200eo_1','4','我是技术文档','./Uploaded/典型应用/技术文档10.txt',getdate());
insert into tbl_Documentation values('技术文档9.txt','200eo_1','5','我是技术文档','./Uploaded/技术规范/技术文档9.txt',getdate());
insert into tbl_Documentation values('技术文档10.txt','200eo_1','5','我是技术文档','./Uploaded/技术规范/技术文档10.txt',getdate());


insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());
insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生'
                                  ,'人事部经理','公司邮箱',getdate(),getdate());

insert into tbl_MarketingImage values('.\images\img_chinamaps.jpg',getdate());


insert into tbl_News values('公司股票上市','1','公司股票于昨日在美国纳斯达克上市，公司股票于昨日在美国纳斯达克上市，公司股票于昨日在美国纳斯达克上市'
                            ,'陈亚星',getdate(),getdate(),'0');
insert into tbl_News values('心系灾区，公司全体员工积极为汶川地震捐款','2','灾难无情人有情，汶川地震，牵动人心！公司领导及员工在集团的带领下，团结一致，踊跃捐款，表达了对灾区人民的关心和对遇难同胞的沉痛哀悼。'
                            ,'李开林',getdate(),getdate(),'0');
insert into tbl_News values('公司股票上市','1','公司股票于昨日在美国纳斯达克上市，公司股票于昨日在美国纳斯达克上市，公司股票于昨日在美国纳斯达克上市'
                            ,'陈亚星',getdate(),getdate(),'0');
insert into tbl_News values('心系灾区，公司全体员工积极为汶川地震捐款','2','灾难无情人有情，汶川地震，牵动人心！公司领导及员工在集团的带领下，团结一致，踊跃捐款，表达了对灾区人民的关心和对遇难同胞的沉痛哀悼。'
                            ,'李开林',getdate(),getdate(),'0');
insert into tbl_News values('公司股票上市','1','公司股票于昨日在美国纳斯达克上市，公司股票于昨日在美国纳斯达克上市，公司股票于昨日在美国纳斯达克上市'
                            ,'陈亚星',getdate(),getdate(),'0');
insert into tbl_News values('心系灾区，公司全体员工积极为汶川地震捐款','2','灾难无情人有情，汶川地震，牵动人心！公司领导及员工在集团的带领下，团结一致，踊跃捐款，表达了对灾区人民的关心和对遇难同胞的沉痛哀悼。'
                            ,'李开林',getdate(),getdate(),'0');
insert into tbl_News values('公司股票上市','1','公司股票于昨日在美国纳斯达克上市，公司股票于昨日在美国纳斯达克上市，公司股票于昨日在美国纳斯达克上市'
                            ,'陈亚星',getdate(),getdate(),'0');
insert into tbl_News values('心系灾区，公司全体员工积极为汶川地震捐款','2','灾难无情人有情，汶川地震，牵动人心！公司领导及员工在集团的带领下，团结一致，踊跃捐款，表达了对灾区人民的关心和对遇难同胞的沉痛哀悼。'
                            ,'李开林',getdate(),getdate(),'0');
insert into tbl_News values('公司股票上市','1','公司股票于昨日在美国纳斯达克上市，公司股票于昨日在美国纳斯达克上市，公司股票于昨日在美国纳斯达克上市'
                            ,'陈亚星',getdate(),getdate(),'0');
insert into tbl_News values('心系灾区，公司全体员工积极为汶川地震捐款','2','灾难无情人有情，汶川地震，牵动人心！公司领导及员工在集团的带领下，团结一致，踊跃捐款，表达了对灾区人民的关心和对遇难同胞的沉痛哀悼。'
                            ,'李开林',getdate(),getdate(),'0');
insert into tbl_News values('公司股票上市','1','公司股票于昨日在美国纳斯达克上市，公司股票于昨日在美国纳斯达克上市，公司股票于昨日在美国纳斯达克上市'
                            ,'陈亚星',getdate(),getdate(),'0');
insert into tbl_News values('心系灾区，公司全体员工积极为汶川地震捐款','2','灾难无情人有情，汶川地震，牵动人心！公司领导及员工在集团的带领下，团结一致，踊跃捐款，表达了对灾区人民的关心和对遇难同胞的沉痛哀悼。'
                            ,'李开林',getdate(),getdate(),'0');
insert into tbl_News values('公司股票上市','1','公司股票于昨日在美国纳斯达克上市，公司股票于昨日在美国纳斯达克上市，公司股票于昨日在美国纳斯达克上市'
                            ,'陈亚星',getdate(),getdate(),'0');
insert into tbl_News values('心系灾区，公司全体员工积极为汶川地震捐款','2','灾难无情人有情，汶川地震，牵动人心！公司领导及员工在集团的带领下，团结一致，踊跃捐款，表达了对灾区人民的关心和对遇难同胞的沉痛哀悼。'
                            ,'李开林',getdate(),getdate(),'0');
insert into tbl_News values('公司股票上市','1','公司股票于昨日在美国纳斯达克上市，公司股票于昨日在美国纳斯达克上市，公司股票于昨日在美国纳斯达克上市'
                            ,'陈亚星',getdate(),getdate(),'0');
insert into tbl_News values('心系灾区，公司全体员工积极为汶川地震捐款','2','灾难无情人有情，汶川地震，牵动人心！公司领导及员工在集团的带领下，团结一致，踊跃捐款，表达了对灾区人民的关心和对遇难同胞的沉痛哀悼。'
                            ,'李开林',getdate(),getdate(),'0');
insert into tbl_News values('公司股票上市','1','公司股票于昨日在美国纳斯达克上市，公司股票于昨日在美国纳斯达克上市，公司股票于昨日在美国纳斯达克上市'
                            ,'陈亚星',getdate(),getdate(),'0');
insert into tbl_News values('心系灾区，公司全体员工积极为汶川地震捐款','2','灾难无情人有情，汶川地震，牵动人心！公司领导及员工在集团的带领下，团结一致，踊跃捐款，表达了对灾区人民的关心和对遇难同胞的沉痛哀悼。'
                            ,'李开林',getdate(),getdate(),'0');
insert into tbl_News values('公司股票上市','1','公司股票于昨日在美国纳斯达克上市，公司股票于昨日在美国纳斯达克上市，公司股票于昨日在美国纳斯达克上市'
                            ,'陈亚星',getdate(),getdate(),'0');
insert into tbl_News values('心系灾区，公司全体员工积极为汶川地震捐款','2','灾难无情人有情，汶川地震，牵动人心！公司领导及员工在集团的带领下，团结一致，踊跃捐款，表达了对灾区人民的关心和对遇难同胞的沉痛哀悼。'
                            ,'李开林',getdate(),getdate(),'0');


insert into tbl_Project values('玉溪卷烟厂01','玉溪卷烟厂防雷工程','3','./project_images/玉溪卷烟厂01.jpg',getdate());
insert into tbl_Project values('玉溪卷烟厂02','玉溪卷烟厂防雷工程','3','./project_images/玉溪卷烟厂02.jpg',getdate());
insert into tbl_Project values('玉溪卷烟厂03','昆明市市政府大楼','3','./project_images/玉溪卷烟厂03.jpg',getdate());
insert into tbl_Project values('曲靖卷烟厂露天堆场01','曲靖卷烟厂露天堆场展示01','3','./project_images/曲靖卷烟厂露天堆场01.jpg',getdate());
insert into tbl_Project values('曲靖卷烟厂露天堆场02','曲靖卷烟厂露天堆场展示02','3','./project_images/曲靖卷烟厂露天堆场02.jpg',getdate());
insert into tbl_Project values('曲靖卷烟厂露天堆场03','曲靖卷烟厂露天堆场展示03','3','./project_images/曲靖卷烟厂露天堆场03.jpg',getdate());
insert into tbl_Project values('曲靖卷烟厂露天堆场04','曲靖卷烟厂露天堆场展示04','3','./project_images/曲靖卷烟厂露天堆场04.jpg',getdate());
insert into tbl_Project values('曲靖卷烟厂露天堆场05','曲靖卷烟厂露天堆场展示05','3','./project_images/曲靖卷烟厂露天堆场05.jpg',getdate());
insert into tbl_Project values('玉溪卷烟厂01','玉溪卷烟厂防雷工程','3','./project_images/玉溪卷烟厂01.jpg',getdate());
insert into tbl_Project values('玉溪卷烟厂02','玉溪卷烟厂防雷工程','3','./project_images/玉溪卷烟厂02.jpg',getdate());
insert into tbl_Project values('玉溪卷烟厂03','昆明市市政府大楼','3','./project_images/玉溪卷烟厂03.jpg',getdate());
insert into tbl_Project values('曲靖卷烟厂露天堆场01','曲靖卷烟厂露天堆场展示01','3','./project_images/曲靖卷烟厂露天堆场01.jpg',getdate());
insert into tbl_Project values('曲靖卷烟厂露天堆场02','曲靖卷烟厂露天堆场展示02','3','./project_images/曲靖卷烟厂露天堆场02.jpg',getdate());
insert into tbl_Project values('曲靖卷烟厂露天堆场03','曲靖卷烟厂露天堆场展示03','3','./project_images/曲靖卷烟厂露天堆场03.jpg',getdate());
insert into tbl_Project values('曲靖卷烟厂露天堆场04','曲靖卷烟厂露天堆场展示04','3','./project_images/曲靖卷烟厂露天堆场04.jpg',getdate());
insert into tbl_Project values('曲靖卷烟厂露天堆场05','曲靖卷烟厂露天堆场展示05','3','./project_images/曲靖卷烟厂露天堆场05.jpg',getdate());

insert into tbl_Project values('昆明市市政府','昆明市市政府大楼','0','./project_images/2.jpg',getdate());
insert into tbl_Project values('昆明市市政府','昆明市市政府大楼','0','./project_images/5.jpg',getdate());
insert into tbl_Project values('昆明市市政府','昆明市市政府大楼','0','./project_images/6.jpg',getdate());
insert into tbl_Project values('昆明市市政府','昆明市市政府大楼','0','./project_images/7.jpg',getdate());
insert into tbl_Project values('昆明市市政府','昆明市市政府大楼','0','./project_images/2.jpg',getdate());
insert into tbl_Project values('昆明市市政府','昆明市市政府大楼','0','./project_images/4.jpg',getdate());
insert into tbl_Project values('昆明市市政府','昆明市市政府大楼','0','./project_images/1.jpg',getdate());
insert into tbl_Project values('昆明市市政府','昆明市市政府大楼','0','./project_images/2.jpg',getdate());
insert into tbl_Project values('昆明市市政府','昆明市市政府大楼','0','./project_images/2.jpg',getdate());
insert into tbl_Project values('昆明市市政府','昆明市市政府大楼','0','./project_images/5.jpg',getdate());
insert into tbl_Project values('昆明市市政府','昆明市市政府大楼','0','./project_images/6.jpg',getdate());
insert into tbl_Project values('昆明市市政府','昆明市市政府大楼','0','./project_images/7.jpg',getdate());
insert into tbl_Project values('昆明市市政府','昆明市市政府大楼','0','./project_images/2.jpg',getdate());
insert into tbl_Project values('昆明市市政府','昆明市市政府大楼','0','./project_images/4.jpg',getdate());
insert into tbl_Project values('昆明市市政府','昆明市市政府大楼','0','./project_images/1.jpg',getdate());
insert into tbl_Project values('昆明市市政府','昆明市市政府大楼','0','./project_images/2.jpg',getdate());

insert into tbl_Project values('昆明市公安局','昆明市公安局防雷工程','1','./project_images/5.jpg',getdate());
insert into tbl_Project values('昆明市公安局','昆明市公安局防雷工程','1','./project_images/6.jpg',getdate());
insert into tbl_Project values('昆明市公安局','昆明市公安局防雷工程','1','./project_images/7.jpg',getdate());
insert into tbl_Project values('昆明市公安局','昆明市公安局防雷工程','1','./project_images/2.jpg',getdate());
insert into tbl_Project values('昆明市公安局','昆明市公安局防雷工程','1','./project_images/4.jpg',getdate());
insert into tbl_Project values('昆明市公安局','昆明市公安局防雷工程','1','./project_images/1.jpg',getdate());
insert into tbl_Project values('昆明市公安局','昆明市公安局防雷工程','1','./project_images/2.jpg',getdate());
insert into tbl_Project values('昆明市公安局','昆明市公安局防雷工程','1','./project_images/5.jpg',getdate());
insert into tbl_Project values('昆明市公安局','昆明市公安局防雷工程','1','./project_images/5.jpg',getdate());
insert into tbl_Project values('昆明市公安局','昆明市公安局防雷工程','1','./project_images/6.jpg',getdate());
insert into tbl_Project values('昆明市公安局','昆明市公安局防雷工程','1','./project_images/7.jpg',getdate());
insert into tbl_Project values('昆明市公安局','昆明市公安局防雷工程','1','./project_images/2.jpg',getdate());
insert into tbl_Project values('昆明市公安局','昆明市公安局防雷工程','1','./project_images/4.jpg',getdate());
insert into tbl_Project values('昆明市公安局','昆明市公安局防雷工程','1','./project_images/1.jpg',getdate());
insert into tbl_Project values('昆明市公安局','昆明市公安局防雷工程','1','./project_images/2.jpg',getdate());
insert into tbl_Project values('昆明市公安局','昆明市公安局防雷工程','1','./project_images/5.jpg',getdate());


insert into tbl_SalesDepartment values('云南省昆明市','公司总部','云南省昆明市','08716666666');
insert into tbl_SalesDepartment values('北京','公司总部','北京市海淀区','01068941236');
insert into tbl_SalesDepartment values('北京','公司总部','北京市海淀区','01068941236');
insert into tbl_SalesDepartment values('北京','公司总部','北京市海淀区','01068941236');
insert into tbl_SalesDepartment values('北京','公司总部','北京市海淀区','01068941236');
insert into tbl_SalesDepartment values('北京','公司总部','北京市海淀区','01068941236');
insert into tbl_SalesDepartment values('北京','公司总部','北京市海淀区','01068941236');
insert into tbl_SalesDepartment values('北京','公司总部','北京市海淀区','01068941236');


insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());
insert into tbl_CustomerMessage(Name,Email,Content,addTime) values('希普防雷公司','yangcongknight@gmail.com','业务相关内容咨询',getdate());