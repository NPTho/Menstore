
delete  OrderDetail
delete Orders
delete  Voucher
delete  Users
delete  Product
delete  Category
Go
﻿
INSERT INTO Category
VALUES 
('TST','T-Shirt'),
('ST','Shirt'),
('SS','Shoes'),
('PT','Pants'),
('JN','Jeans'),
('CT', 'Coat'),
('JK','Jacket'),
('AC','Accessories'),
('HT','Hat'),
('SU','Suit'),
('SRT','Shorts'),
('BZ','Blazer');
Go


--Product
INSERT INTO Product
VALUES 
-- T-shirt
('TST_DOC_S','Áo thun trơn trắng Doc Tee','On',0,199000,280,'S','TST','https://cf.shopee.vn/file/d35ca69fcefcdb1d66562d5222ad82d5'),
('TST_DOC_M','Áo thun trơn trắng Doc Tee','On',0,199000,80,'M','TST','https://cf.shopee.vn/file/d35ca69fcefcdb1d66562d5222ad82d5'),
('TST_DOC_L','Áo thun trơn trắng Doc Tee','On',0,199000,180,'L','TST','https://cf.shopee.vn/file/d35ca69fcefcdb1d66562d5222ad82d5'),

('TST_SEAMAN_S','Áo thun tay sọc Seaman Tee','On',10,186000,30,'S','TST','https://static.dosi-in.com/images/detailed/375/dosiin-ssstutter-ao-phong-ngan-tay-nam-ssstutter-uri-tee-375325375325.jpg'),
('TST_SEAMAN_M','Áo thun tay sọc Seaman Tee','On',10,186000,310,'M','TST','https://static.dosi-in.com/images/detailed/375/dosiin-ssstutter-ao-phong-ngan-tay-nam-ssstutter-uri-tee-375325375325.jpg'),
('TST_SEAMAN_L','Áo thun tay sọc Seaman Tee','Off',10,186000,0,'L','TST','https://static.dosi-in.com/images/detailed/375/dosiin-ssstutter-ao-phong-ngan-tay-nam-ssstutter-uri-tee-375325375325.jpg'),

('TST_CLOSER_S','Áo thun đen thêu CLoser Tee','Off',0,250000,0,'S','TST','https://product.hstatic.net/200000350749/product/97ed89aa3b84cfda9695_358d7f26782f4cd5a60e7f56a72e3355_master.jpg'),
('TST_CLOSER_M','Áo thun đen thêu CLoser Tee','On',5,250000,140,'M','TST','https://product.hstatic.net/200000350749/product/97ed89aa3b84cfda9695_358d7f26782f4cd5a60e7f56a72e3355_master.jpg'),
('TST_CLOSER_L','Áo thun đen thêu CLoser Tee','On',5,250000,80,'L','TST','https://product.hstatic.net/200000350749/product/97ed89aa3b84cfda9695_358d7f26782f4cd5a60e7f56a72e3355_master.jpg'),

('TST_VTEE_S','Áo thun cổ chữ V V-Tee','On',25,299000,65,'S','TST','https://img.muji.net/img/item/4550182629163_1260.jpg'),
('TST_VTEE_M','Áo thun cổ chữ V V-Tee','On',25,299000,152,'M','TST','https://img.muji.net/img/item/4550182629163_1260.jpg'),
('TST_VTEE_L','Áo thun cổ chữ V V-Tee','On',25,299000,5,'L','TST','https://img.muji.net/img/item/4550182629163_1260.jpg'),

('TST_MORNTEE_S','Áo thun có túi thêu Morning Tee','On',0,350000,12,'S','TST','https://vcdn.tikicdn.com/ts/product/04/da/04/707667445f440cb592a035352f253b10.jpg'),
('TST_MORNTEE_M','Áo thun có túi thêu Morning Tee','Off',0,350000,0,'M','TST','https://vcdn.tikicdn.com/ts/product/04/da/04/707667445f440cb592a035352f253b10.jpg'),
('TST_MORNTEE_L','Áo thun có túi thêu Morning Tee','On',0,350000,28,'L','TST','https://vcdn.tikicdn.com/ts/product/04/da/04/707667445f440cb592a035352f253b10.jpg'),


('TST_GREATLIFE_S','Áo thun trơn đen Great Life Tee','On',15,220000,130,'S','TST','http://bizweb.dktcdn.net/thumb/grande/100/212/791/products/den-tron-e0107bd2-7e93-4407-97e6-a431963f8d04.jpg?v=1623418670430'),
('TST_GREATLIFE_M','Áo thun trơn đen Great Life Tee','On',15,220000,332,'M','TST','http://bizweb.dktcdn.net/thumb/grande/100/212/791/products/den-tron-e0107bd2-7e93-4407-97e6-a431963f8d04.jpg?v=1623418670430'),
('TST_GREATLIFE_L','Áo thun trơn đen Great Life Tee','On',15,220000,30,'L','TST','http://bizweb.dktcdn.net/thumb/grande/100/212/791/products/den-tron-e0107bd2-7e93-4407-97e6-a431963f8d04.jpg?v=1623418670430'),

('TST_SQUARE_S','Áo thun cổ thuyền Square Tee','On',5,298000,65,'S','TST','https://cf.shopee.vn/file/a20af26926705b30d9be0c1f0e92374a_tn'),
('TST_SQUARE_M','Áo thun cổ thuyền Square Tee','On',5,298000,195,'M','TST','https://cf.shopee.vn/file/a20af26926705b30d9be0c1f0e92374a_tn'),
('TST_SQUARE_L','Áo thun cổ thuyền Square Tee','On',5,298000,5,'L','TST','https://cf.shopee.vn/file/a20af26926705b30d9be0c1f0e92374a_tn'),
-- end t-shirt

--Shirt
('ST_MODAL_S','Sơ Mi Tay Dài Tối Giản Superfine Modal','On',20,255000,33,'S','ST','https://cdn2.yame.vn/pimg/so-mi-nam-no-style-td-km18-0018246/ba594ee4-52ea-0900-ef35-001590614731.jpg?w=800'),
('ST_MODAL_M','Sơ Mi Tay Dài Tối Giản Superfine Modal','On',20,255000,27,'M','ST','https://cdn2.yame.vn/pimg/so-mi-nam-no-style-td-km18-0018246/ba594ee4-52ea-0900-ef35-001590614731.jpg?w=800'),
('ST_MODAL_L','Sơ Mi Tay Dài Tối Giản Superfine Modal','On',20,255000,35,'L','ST','https://cdn2.yame.vn/pimg/so-mi-nam-no-style-td-km18-0018246/ba594ee4-52ea-0900-ef35-001590614731.jpg?w=800'),

('ST_COTTONLINEN_S','Sơ Mi Cổ Lãnh Tụ Đơn Giản Cotton Linen','On',0,255000,2,'S','ST','https://cdn2.yame.vn/pimg/so-mi-co-lanh-tu-rong-cotton-on-gian-solid-m25-0020231/dc78101f-fbaf-5200-7b4c-0017f7cea211.jpg?w=800'),
('ST_COTTONLINEN_M','Sơ Mi Cổ Lãnh Tụ Đơn Giản Cotton Linen','On',0,255000,230,'M','ST','https://cdn2.yame.vn/pimg/so-mi-co-lanh-tu-rong-cotton-on-gian-solid-m25-0020231/dc78101f-fbaf-5200-7b4c-0017f7cea211.jpg?w=800'),
('ST_COTTONLINEN_L','Sơ Mi Cổ Lãnh Tụ Đơn Giản Cotton Linen','On',0,255000,13,'L','ST','https://cdn2.yame.vn/pimg/so-mi-co-lanh-tu-rong-cotton-on-gian-solid-m25-0020231/dc78101f-fbaf-5200-7b4c-0017f7cea211.jpg?w=800'),

('ST_DENIMJEAN_S','Sơ mi jean tay dài Denim Jean','On',10,325000,1,'S','ST','https://cdn2.yame.vn/pimg/so-mi-nam-y2010-jean-td-a02-0019385/aa96f3ef-36a0-0701-8e91-0016746d0c60.jpg?w=800'),
('ST_DENIMJEAN_M','Sơ mi jean tay dài Denim Jean','On',10,325000,120,'M','ST','https://cdn2.yame.vn/pimg/so-mi-nam-y2010-jean-td-a02-0019385/aa96f3ef-36a0-0701-8e91-0016746d0c60.jpg?w=800'),
('ST_DENIMJEAN_L','Sơ mi jean tay dài Denim Jean','On',10,325000,68,'L','ST','https://cdn2.yame.vn/pimg/so-mi-nam-y2010-jean-td-a02-0019385/aa96f3ef-36a0-0701-8e91-0016746d0c60.jpg?w=800'),

('ST_BAMBOO_S','Sơ mi tre đơn giản Bamboo Tcool','On',0,285000,20,'S','ST','https://cdn2.yame.vn/pimg/so-mi-td-tc-on-gian-solid-m13-0020171/ee312901-a06e-a000-f297-0017a488e8d4.jpg?w=800'),
('ST_BAMBOO_M','Sơ mi tre đơn giản Bamboo Tcool','Off',0,285000,0,'M','ST','https://cdn2.yame.vn/pimg/so-mi-td-tc-on-gian-solid-m13-0020171/ee312901-a06e-a000-f297-0017a488e8d4.jpg?w=800'),
('ST_BAMBOO_L','Sơ mi tre đơn giản Bamboo Tcool','Off',0,285000,0,'L','ST','https://cdn2.yame.vn/pimg/so-mi-td-tc-on-gian-solid-m13-0020171/ee312901-a06e-a000-f297-0017a488e8d4.jpg?w=800'),

('ST_YORIGINAL_S','Sơ mi thêu tay dài Y-Original','On',0,240000,130,'S','ST','https://cdn2.yame.vn/pimg/so-mi-tay-dai-on-gian-y-nguyen-ban-ver7-0020363/b9aab8f4-e7eb-6301-f7ff-0018a6ed28d2.jpg?w=800'),
('ST_YORIGINAL_M','Sơ mi thêu tay dài Y-Original','On',0,240000,30,'M','ST','https://cdn2.yame.vn/pimg/so-mi-tay-dai-on-gian-y-nguyen-ban-ver7-0020363/b9aab8f4-e7eb-6301-f7ff-0018a6ed28d2.jpg?w=800'),
('ST_YORIGINAL_L','Sơ mi thêu tay dài Y-Original','On',0,240000,20,'L','ST','https://cdn2.yame.vn/pimg/so-mi-tay-dai-on-gian-y-nguyen-ban-ver7-0020363/b9aab8f4-e7eb-6301-f7ff-0018a6ed28d2.jpg?w=800'),

('ST_COTTONTENCEL_S','Sơ mi sọc tay dài Cotton Tencel','On',5,285000,220,'S','ST','https://cdn2.yame.vn/pimg/so-mi-td-r-on-gian-solid-m17-0020176/43bad3bb-17f5-7300-f315-00179fa04a77.jpg?w=800'),
('ST_COTTONTENCEL_M','Sơ mi sọc tay dài Cotton Tencel','On',5,285000,120,'M','ST','https://cdn2.yame.vn/pimg/so-mi-td-r-on-gian-solid-m17-0020176/43bad3bb-17f5-7300-f315-00179fa04a77.jpg?w=800'),
('ST_COTTONTENCEL_L','Sơ mi sọc tay dài Cotton Tencel','On',5,285000,60,'L','ST','https://cdn2.yame.vn/pimg/so-mi-td-r-on-gian-solid-m17-0020176/43bad3bb-17f5-7300-f315-00179fa04a77.jpg?w=800'),

('ST_FABRIC_S','Sơ mi thời trang tay dài Fabric','On',10,250000,80,'S','ST','https://cdn2.yame.vn/pimg/so-mi-td-r-on-gian-solid-m23-0020219/3ba372a0-b88d-7900-f0f4-0017f7dcaddb.jpg?w=800'),
('ST_FABRIC_M','Sơ mi thời trang tay dài Fabric','Off',10,250000,0,'M','ST','https://cdn2.yame.vn/pimg/so-mi-td-r-on-gian-solid-m23-0020219/3ba372a0-b88d-7900-f0f4-0017f7dcaddb.jpg?w=800'),
('ST_FABRIC_L','Sơ mi thời trang tay dài Fabric','On',10,250000,120,'L','ST','https://cdn2.yame.vn/pimg/so-mi-td-r-on-gian-solid-m23-0020219/3ba372a0-b88d-7900-f0f4-0017f7dcaddb.jpg?w=800'),

--Shoes
('SS_PierreCardin_39','Giày nam Pierre Cardin','On',30,2990000,40,'39','SS','https://product.hstatic.net/1000328498/product/751_767_5cc8a1e852bb49448081646e095b0d8d_2b7c3313111e48d8990dbc91a88f17d5_large.jpg'),
('SS_PierreCardin_40','Giày nam Pierre Cardin','On',30,2990000,35,'40','SS','https://product.hstatic.net/1000328498/product/751_767_5cc8a1e852bb49448081646e095b0d8d_2b7c3313111e48d8990dbc91a88f17d5_large.jpg'),
('SS_PierreCardin_41','Giày nam Pierre Cardin','On',30,2990000,42,'41','SS','https://product.hstatic.net/1000328498/product/751_767_5cc8a1e852bb49448081646e095b0d8d_2b7c3313111e48d8990dbc91a88f17d5_large.jpg'),
('SS_PierreCardin_42','Giày nam Pierre Cardin','On',30,2990000,50,'42','SS','https://product.hstatic.net/1000328498/product/751_767_5cc8a1e852bb49448081646e095b0d8d_2b7c3313111e48d8990dbc91a88f17d5_large.jpg'),
('SS_PierreCardin_43','Giày nam Pierre Cardin','On',30,2990000,25,'43','SS','https://product.hstatic.net/1000328498/product/751_767_5cc8a1e852bb49448081646e095b0d8d_2b7c3313111e48d8990dbc91a88f17d5_large.jpg'),

('SS_TASSELLOAFER_39','Giày nam Tassel Loafer','On',70,4990000,65,'39','SS','https://product.hstatic.net/1000328498/product/347_blk20_f3e57bd3283a4869a63673b746bfea75_large.jpg'),
('SS_TASSELLOAFER_40','Giày nam Tassel Loafer','Off',70,4990000,0,'40','SS','https://product.hstatic.net/1000328498/product/347_blk20_f3e57bd3283a4869a63673b746bfea75_large.jpg'),
('SS_TASSELLOAFER_41','Giày nam Tassel Loafer','On',70,4990000,28,'41','SS','https://product.hstatic.net/1000328498/product/347_blk20_f3e57bd3283a4869a63673b746bfea75_large.jpg'),
('SS_TASSELLOAFER_42','Giày nam Tassel Loafer','Off',70,4990000,0,'42','SS','https://product.hstatic.net/1000328498/product/347_blk20_f3e57bd3283a4869a63673b746bfea75_large.jpg'),
('SS_TASSELLOAFER_43','Giày nam Tassel Loafer','On',70,4990000,45,'43','SS','https://product.hstatic.net/1000328498/product/347_blk20_f3e57bd3283a4869a63673b746bfea75_large.jpg'),

('SS_PENNYLOAFER_39','Giày nam Penny Loafer','Off',30,5990000,0,'39','SS','https://product.hstatic.net/1000328498/product/pcmfwle_331__3__4408da0a81eb4b0187238fdace8fbcc9_large.jpg'),
('SS_PENNYLOAFER_40','Giày nam Penny Loafer','Off',30,5990000,0,'40','SS','https://product.hstatic.net/1000328498/product/pcmfwle_331__3__4408da0a81eb4b0187238fdace8fbcc9_large.jpg'),
('SS_PENNYLOAFER_41','Giày nam Penny Loafer','On',30,5990000,85,'41','SS','https://product.hstatic.net/1000328498/product/pcmfwle_331__3__4408da0a81eb4b0187238fdace8fbcc9_large.jpg'),
('SS_PENNYLOAFER_42','Giày nam Penny Loafer','On',30,5990000,123,'42','SS','https://product.hstatic.net/1000328498/product/pcmfwle_331__3__4408da0a81eb4b0187238fdace8fbcc9_large.jpg'),
('SS_PENNYLOAFER_43','Giày nam Penny Loafer','On',30,5990000,37,'43','SS','https://product.hstatic.net/1000328498/product/pcmfwle_331__3__4408da0a81eb4b0187238fdace8fbcc9_large.jpg'),

('SS_STANSMITH_39','Giày nam Stan Smith','On',0,2500000,120,'39','SS','https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/8787a0066e664f2abff6ad0500e56a40_9366/Giay_Stan_Smith_trang_GY5695_01_standard.jpg'),
('SS_STANSMITH_40','Giày nam Stan Smith','On',0,2500000,174,'40','SS','https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/8787a0066e664f2abff6ad0500e56a40_9366/Giay_Stan_Smith_trang_GY5695_01_standard.jpg'),
('SS_STANSMITH_41','Giày nam Stan Smith','On',0,2500000,221,'41','SS','https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/8787a0066e664f2abff6ad0500e56a40_9366/Giay_Stan_Smith_trang_GY5695_01_standard.jpg'),
('SS_STANSMITH_42','Giày nam Stan Smith','On',0,2500000,84,'42','SS','https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/8787a0066e664f2abff6ad0500e56a40_9366/Giay_Stan_Smith_trang_GY5695_01_standard.jpg'),
('SS_STANSMITH_43','Giày nam Stan Smith','On',0,2500000,55,'43','SS','https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/8787a0066e664f2abff6ad0500e56a40_9366/Giay_Stan_Smith_trang_GY5695_01_standard.jpg'),

('SS_FORUMPREMIERE_39','Giày nam Forum Premiere','On',0,4800000,35,'39','SS','https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/3f09239b4c0c4d9cba74add401178b96_9366/Giay_Forum_Premiere_trang_GY5800_01_standard.jpg'),
('SS_FORUMPREMIERE_40','Giày nam Forum Premiere','On',0,4800000,11,'39','SS','https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/3f09239b4c0c4d9cba74add401178b96_9366/Giay_Forum_Premiere_trang_GY5800_01_standard.jpg'),
('SS_FORUMPREMIERE_41','Giày nam Forum Premiere','Off',0,4800000,0,'39','SS','https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/3f09239b4c0c4d9cba74add401178b96_9366/Giay_Forum_Premiere_trang_GY5800_01_standard.jpg'),
('SS_FORUMPREMIERE_42','Giày nam Forum Premiere','On',0,4800000,84,'39','SS','https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/3f09239b4c0c4d9cba74add401178b96_9366/Giay_Forum_Premiere_trang_GY5800_01_standard.jpg'),
('SS_FORUMPREMIERE_43','Giày nam Forum Premiere','Off',0,4800000,0,'39','SS','https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/3f09239b4c0c4d9cba74add401178b96_9366/Giay_Forum_Premiere_trang_GY5800_01_standard.jpg'),

('SS_ADIDASFORUM_39','Giày nam Adidas Forum','On',0,2500000,68,'39','SS','https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/09c5ea6df1bd4be6baaaac5e003e7047_9366/Giay_Co_Thap_Forum_trang_FY7756_01_standard.jpg'),
('SS_ADIDASFORUM_40','Giày nam Adidas Forum','On',0,2500000,28,'40','SS','https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/09c5ea6df1bd4be6baaaac5e003e7047_9366/Giay_Co_Thap_Forum_trang_FY7756_01_standard.jpg'),
('SS_ADIDASFORUM_41','Giày nam Adidas Forum','On',0,2500000,38,'41','SS','https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/09c5ea6df1bd4be6baaaac5e003e7047_9366/Giay_Co_Thap_Forum_trang_FY7756_01_standard.jpg'),
('SS_ADIDASFORUM_42','Giày nam Adidas Forum','On',0,2500000,48,'42','SS','https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/09c5ea6df1bd4be6baaaac5e003e7047_9366/Giay_Co_Thap_Forum_trang_FY7756_01_standard.jpg'),
('SS_ADIDASFORUM_43','Giày nam Adidas Forum','On',0,2500000,58,'43','SS','https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/09c5ea6df1bd4be6baaaac5e003e7047_9366/Giay_Co_Thap_Forum_trang_FY7756_01_standard.jpg'),

('SS_RESPONSESUPER_39','Giày nam Response Super','On',0,2300000,55,'39','SS','https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/28392f623ffc41089e1ead7100d3a94e_9366/Giay_Response_Super_2.0_trang_GX8264_01_standard.jpg'),
('SS_RESPONSESUPER_40','Giày nam Response Super','On',0,2300000,65,'40','SS','https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/28392f623ffc41089e1ead7100d3a94e_9366/Giay_Response_Super_2.0_trang_GX8264_01_standard.jpg'),
('SS_RESPONSESUPER_41','Giày nam Response Super','On',0,2300000,77,'41','SS','https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/28392f623ffc41089e1ead7100d3a94e_9366/Giay_Response_Super_2.0_trang_GX8264_01_standard.jpg'),
('SS_RESPONSESUPER_42','Giày nam Response Super','On',0,2300000,84,'42','SS','https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/28392f623ffc41089e1ead7100d3a94e_9366/Giay_Response_Super_2.0_trang_GX8264_01_standard.jpg'),
('SS_RESPONSESUPER_43','Giày nam Response Super','On',0,2300000,20,'43','SS','https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/28392f623ffc41089e1ead7100d3a94e_9366/Giay_Response_Super_2.0_trang_GX8264_01_standard.jpg'),

--Pants
('PT_MOC_S','Quần tây nam Moc Pants','On',10,520000,120,'S','PT','https://assetsprx.matchesfashion.com/img/product/1300/1427441_6.jpg'),
('PT_MOC_M','Quần tây nam Moc Pants','On',10,520000,253,'M','PT','https://assetsprx.matchesfashion.com/img/product/1300/1427441_6.jpg'),
('PT_MOC_L','Quần tây nam Moc Pants','On',10,520000,28,'L','PT','https://assetsprx.matchesfashion.com/img/product/1300/1427441_6.jpg'),

('PT_CROPPED_S','Quần tây ống rộng Cropped Pants','On',0,399000,95,'S','PT','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcR0XN-wYpcayXEjG8R0epnB4tfrORC0ybFu49dK851HnPqIEya7'),
('PT_CROPPED_M','Quần tây ống rộng Cropped Pants','On',0,399000,104,'M','PT','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcR0XN-wYpcayXEjG8R0epnB4tfrORC0ybFu49dK851HnPqIEya7'),
('PT_CROPPED_L','Quần tây ống rộng Cropped Pants','On',0,399000,65,'L','PT','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcR0XN-wYpcayXEjG8R0epnB4tfrORC0ybFu49dK851HnPqIEya7'),
	
('PT_FIT_S','Quần tây nam form Hàn Fit Pants','On',0,499000,345,'S','PT','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQPaFZZgvBXx6l-__cBUyaYNVYiLLGseg-s9VRYCEr2DyiQv5Ju'),
('PT_FIT_M','Quần tây nam form Hàn Fit Pants','On',0,499000,261,'M','PT','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQPaFZZgvBXx6l-__cBUyaYNVYiLLGseg-s9VRYCEr2DyiQv5Ju'),
('PT_FIT_L','Quần tây nam form Hàn Fit Pants','On',0,499000,175,'L','PT','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQPaFZZgvBXx6l-__cBUyaYNVYiLLGseg-s9VRYCEr2DyiQv5Ju'),

('PT_CARGO_S','Quần tầy nam túi hộp Cargo Box','On',0,560000,153,'S','PT','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRv3m2wB-pDeu_IyQOO_bvah58RnOSNwLNw6_7RusPzZZ35u1SL'),
('PT_CARGO_M','Quần tầy nam túi hộp Cargo Box','On',0,560000,203,'M','PT','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRv3m2wB-pDeu_IyQOO_bvah58RnOSNwLNw6_7RusPzZZ35u1SL'),
('PT_CARGO_L','Quần tầy nam túi hộp Cargo Box','On',0,560000,86,'L','PT','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRv3m2wB-pDeu_IyQOO_bvah58RnOSNwLNw6_7RusPzZZ35u1SL'),

('PT_JOGGER_S','Quần Jogger nam trắng','On',0,389000,220,'S','PT','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTNQNZOUp0lh7BssVlFQhebpxWWhOs5L706dNqM4eSomD2_lcDq'),
('PT_JOGGER_M','Quần Jogger nam trắng','On',0,389000,124,'M','PT','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTNQNZOUp0lh7BssVlFQhebpxWWhOs5L706dNqM4eSomD2_lcDq'),
('PT_JOGGER_L','Quần Jogger nam trắng','On',0,389000,82,'L','PT','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTNQNZOUp0lh7BssVlFQhebpxWWhOs5L706dNqM4eSomD2_lcDq'),

('PT_WISE_S','Quần Tây Tối Giản Wise Pants','On',10,420000,143,'S','PT','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSCTpZP7PCKQe0YCS8eKRFYkAhuII8oCE2WPiWWcWngK7rbKaTw'),
('PT_WISE_M','Quần Tây Tối Giản Wise Pants','On',10,420000,93,'M','PT','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSCTpZP7PCKQe0YCS8eKRFYkAhuII8oCE2WPiWWcWngK7rbKaTw'),
('PT_WISE_L','Quần Tây Tối Giản Wise Pants','On',10,420000,53,'L','PT','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSCTpZP7PCKQe0YCS8eKRFYkAhuII8oCE2WPiWWcWngK7rbKaTw'),

--Jeans
('JN_TONY_S','Quần Jeans form rộng Tony Jeans','On',0,899000,58,'S','JN','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtS25gpfv3r-OHnGFzf5RxNS3LwKQ-fLhXvqFJ-eJJScRg7Szz'),
('JN_TONY_M','Quần Jeans form rộng Tony Jeans','On',0,899000,83,'M','JN','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtS25gpfv3r-OHnGFzf5RxNS3LwKQ-fLhXvqFJ-eJJScRg7Szz'),
('JN_TONY_L','Quần Jeans form rộng Tony Jeans','On',0,899000,91,'L','JN','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtS25gpfv3r-OHnGFzf5RxNS3LwKQ-fLhXvqFJ-eJJScRg7Szz'),

('JN_GROOVE_S','Quần Jeans tối giản Groove Jeans','On',0,699000,170,'S','JN','https://i.pinimg.com/474x/39/06/61/390661b014c03e49569d58f594dc0cf6--ripped-jeans-men-torn-jeans.jpg'),
('JN_GROOVE_M','Quần Jeans tối giản Groove Jeans','On',0,699000,214,'M','JN','https://i.pinimg.com/474x/39/06/61/390661b014c03e49569d58f594dc0cf6--ripped-jeans-men-torn-jeans.jpg'),
('JN_GROOVE_L','Quần Jeans tối giản Groove Jeans','On',0,699000,87,'L','JN','https://i.pinimg.com/474x/39/06/61/390661b014c03e49569d58f594dc0cf6--ripped-jeans-men-torn-jeans.jpg'),

('JN_GENTLE_S','Quần Jeans Ôm Gentle Jeans','On',15,1200000,80,'S','JN','https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/2290020/2018/2/7/11518001291442-HIGHLANDER-Men-Black-Slim-Fit-Mid-Rise-Clean-Look-Stretchable-Jeans-8231518001291181-1.jpg'),
('JN_GENTLE_M','Quần Jeans Ôm Gentle Jeans','On',15,1200000,125,'M','JN','https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/2290020/2018/2/7/11518001291442-HIGHLANDER-Men-Black-Slim-Fit-Mid-Rise-Clean-Look-Stretchable-Jeans-8231518001291181-1.jpg'),
('JN_GENTLE_L','Quần Jeans Ôm Gentle Jeans','On',15,1200000,95,'L','JN','https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/2290020/2018/2/7/11518001291442-HIGHLANDER-Men-Black-Slim-Fit-Mid-Rise-Clean-Look-Stretchable-Jeans-8231518001291181-1.jpg'),

('JN_CLASSIC_S','Quần Jeans form chuẩn Classic Jeans','Off',0,899000,0,'S','JN','https://i.pinimg.com/736x/f6/f4/51/f6f451affad86a4644d37cb298ea90cc.jpg'),
('JN_CLASSIC_M','Quần Jeans form chuẩn Classic Jeans','On',0,899000,120,'M','JN','https://i.pinimg.com/736x/f6/f4/51/f6f451affad86a4644d37cb298ea90cc.jpg'),
('JN_CLASSIC_L','Quần Jeans form chuẩn Classic Jeans','On',0,899000,70,'L','JN','https://i.pinimg.com/736x/f6/f4/51/f6f451affad86a4644d37cb298ea90cc.jpg'),

('JN_STEEL_S','Quần Jeans tối giản Steel Jeans','On',20,1400000,50,'S','JN','https://5.imimg.com/data5/WN/SF/MY-23322128/jn6-500x500.jpg'),
('JN_STEEL_M','Quần Jeans tối giản Steel Jeans','On',20,1400000,120,'M','JN','https://5.imimg.com/data5/WN/SF/MY-23322128/jn6-500x500.jpg'),
('JN_STEEL_L','Quần Jeans tối giản Steel Jeans','Off',20,1400000,0,'L','JN','https://5.imimg.com/data5/WN/SF/MY-23322128/jn6-500x500.jpg')
go

INSERT INTO Voucher
VALUES('TetHoliday', 0.1,'2022-2-10',200000,500000,'Giam gia nhan dip nam moi')
GO

INSERT INTO Users
VALUES ('US0001','Quang','ABCDEFG','123456','User',0,'123 Nguyen Hue',0154712134)
go

INSERT INTO Orders
VALUES ('HD0001',500000,'2022-1-15',1000000,'','Done','US0001','TetHoliday')
go

INSERT INTO OrderDetail
VALUES 
('HD0001','TST_DOC_S',199000,2),
('HD0001','SS_PierreCardin_39',299000,1)
Go