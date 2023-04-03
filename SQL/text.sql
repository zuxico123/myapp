CREATE TABLE withdrawal (
    withdrawal_num NUMBER GENERATED ALWAYS AS IDENTITY CONSTRAINT withdrawal_withdrawal_num_pk PRIMARY KEY,
    withdrawal_reason VARCHAR2(20) NOT NULL,
    etc_reason VARCHAR2(600)
);

CREATE TABLE country (
    country_id NUMBER GENERATED ALWAYS AS IDENTITY CONSTRAINT country_country_id_pk PRIMARY KEY,
    country_name VARCHAR2(20) NOT NULL
);

CREATE TABLE city (
    city_id NUMBER GENERATED ALWAYS AS IDENTITY CONSTRAINT city_city_id_pk PRIMARY KEY,
    city_name VARCHAR2(20) NOT NULL,
    country_id NUMBER NOT NULL CONSTRAINT city_country_id_fk REFERENCES country(country_id) ON DELETE CASCADE
);

CREATE TABLE town (
    town_id NUMBER GENERATED ALWAYS AS IDENTITY CONSTRAINT town_town_id_pk PRIMARY KEY,
    town_name VARCHAR2(20) NOT NULL,
    city_id NUMBER NOT NULL CONSTRAINT town_city_id_fk REFERENCES city(city_id) ON DELETE CASCADE
);

CREATE TABLE favorite (
    member_id NUMBER CONSTRAINT favorite_member_id_fk REFERENCES member(member_id) ON DELETE CASCADE,
    retail_id NUMBER CONSTRAINT favorite_retail_id_fk REFERENCES retail(retail_id) ON DELETE CASCADE,
   
   CONSTRAINT favorite_member_id_retail_id_pk PRIMARY KEY (member_id, retail_id)
);

CREATE TABLE sale (
    api_date DATE,
    retail_id NUMBER CONSTRAINT sale_retail_id_fk REFERENCES retail(retail_id) ON DELETE CASCADE,
    goods_id NUMBER CONSTRAINT sale_goods_id_fk REFERENCES goods(goods_id) ON DELETE CASCADE,
    price NUMBER NOT NULL,
    
    CONSTRAINT sale_api_date_retail_id_goods_id_pk PRIMARY KEY (api_date, retail_id, goods_id)
);

CREATE TABLE wish_list (
    member_id NUMBER CONSTRAINT wish_list_member_id_fk REFERENCES member(member_id) ON DELETE CASCADE,
    goods_id NUMBER CONSTRAINT wish_list_goods_id_fk REFERENCES goods(goods_id) ON DELETE CASCADE,
    
    CONSTRAINT wish_list_member_id_goods_id_pk PRIMARY KEY (member_id, goods_id)
);

CREATE TABLE chat_room_enter (
    chat_room_id NUMBER CONSTRAINT chat_room_enter_chat_room_id_fk REFERENCES chatroom(chat_room_id) ON DELETE CASCADE,
    member_id_1 NUMBER NOT NULL CONSTRAINT chat_room_enter_members_id_1_fk REFERENCES member(member_id) ON DELETE CASCADE,
    member_id_2 NUMBER CONSTRAINT chat_room_enter_members_id_2_fk REFERENCES member(member_id) ON DELETE CASCADE,
    member_id_3 NUMBER CONSTRAINT chat_room_enter_members_id_3_fk REFERENCES member(member_id) ON DELETE CASCADE,
    member_id_4 NUMBER CONSTRAINT chat_room_enter_members_id_4_fk REFERENCES member(member_id) ON DELETE CASCADE,
    
    CONSTRAINT chat_room_enter_chat_room_id_member_id PRIMARY KEY (chat_room_id)
);




DROP TABLE withdrawal;
DROP TABLE country CASCADE CONSTRAINTS;
DROP TABLE city CASCADE CONSTRAINTS;
DROP TABLE town CASCADE CONSTRAINTS;
DROP TABLE favorite;
DROP TABLE sale;
DROP TABLE wish_list;
DROP TABLE chat_room_enter;


aaa