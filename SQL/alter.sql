ALTER TABLE city
ADD CONSTRAINT city_country_id_fk FOREIGN KEY (country_id)  
REFERENCES country (country_id) ON DELETE CASCADE;

ALTER TABLE town
ADD CONSTRAINT town_city_id_fk FOREIGN KEY (city_id)
REFERENCES city (city_id) ON DELETE CASCADE;

ALTER TABLE favorite
ADD CONSTRAINT favorite_member_id_retail_id_pk PRIMARY KEY (
	member_id,
	retail_id
);

ALTER TABLE favorite
ADD CONSTRAINT favorite_member_id_fk FOREIGN KEY (member_id)
REFERENCES member (member_id) ON DELETE CASCADE;

ALTER TABLE favorite
ADD CONSTRAINT favorite_retail_id_fk FOREIGN KEY (retail_id)
REFERENCES retail (retail_id) ON DELETE CASCADE;


ALTER TABLE sale
ADD CONSTRAINT sale_api_date_retail_id_goods_id_pk PRIMARY KEY (
	api_date,
	retail_id,
	goods_id
);

ALTER TABLE sale
ADD CONSTRAINT sale_retail_id_fk FOREIGN KEY (retail_id)
REFERENCES retail (retail_id) ON DELETE CASCADE;

ALTER TABLE sale
ADD CONSTRAINT sale_goods_id_fk FOREIGN KEY (goods_id)
REFERENCES goods (goods_id) ON DELETE CASCADE;


ALTER TABLE wish_list
ADD CONSTRAINT wish_list_member_id_goods_id_pk PRIMARY KEY (
	member_id,
	goods_id
);

ALTER TABLE wish_list
ADD CONSTRAINT wish_list_member_id_fk FOREIGN KEY (member_id)
REFERENCES member (member_id) ON DELETE CASCADE;

ALTER TABLE wish_list
ADD CONSTRAINT wish_list_goods_id_fk FOREIGN KEY (goods_id)
REFERENCES goods (goods_id) ON DELETE CASCADE;


ALTER TABLE chat_room_enter
ADD CONSTRAINT chat_room_enter_chat_room_id_pk PRIMARY KEY (
	chat_room_id
);

ALTER TABLE chat_room_enter
ADD CONSTRAINT chat_room_enter_chat_room_id_fk FOREIGN KEY (chat_room_id)
REFERENCES chatroom (chat_room_id) ON DELETE CASCADE;

ALTER TABLE chat_room_enter
ADD CONSTRAINT chat_room_enter_members_id_1_fk FOREIGN KEY (member_id_1)
REFERENCES member (member_id) ON DELETE CASCADE;

ALTER TABLE chat_room_enter
ADD CONSTRAINT chat_room_enter_members_id_2_fk FOREIGN KEY (member_id_2)
REFERENCES member (member_id) ON DELETE CASCADE;

ALTER TABLE chat_room_enter
ADD CONSTRAINT chat_room_enter_members_id_3_fk FOREIGN KEY (member_id_3)
REFERENCES member (member_id) ON DELETE CASCADE;

ALTER TABLE chat_room_enter
ADD CONSTRAINT chat_room_enter_members_id_4_fk FOREIGN KEY (member_id_4)
REFERENCES member (member_id) ON DELETE CASCADE;