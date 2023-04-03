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
    country_id NUMBER NOT NULL
);

CREATE TABLE town (
    town_id NUMBER GENERATED ALWAYS AS IDENTITY CONSTRAINT town_town_id_pk PRIMARY KEY,
    town_name VARCHAR2(20) NOT NULL,
    city_id NUMBER NOT NULL
);

CREATE TABLE favorite (
    member_id NUMBER,
    retail_id NUMBER
);

CREATE TABLE sale (
    api_date DATE,
    retail_id NUMBER,
    goods_id NUMBER, 
    price NUMBER NOT NULL,
);

CREATE TABLE wish_list (
    member_id NUMBER,
    goods_id NUMBER,
);

CREATE TABLE chat_room_enter (
    chat_room_id NUMBER,
    member_id_1 NUMBER NOT NULL,
    member_id_2 NUMBER,
    member_id_3 NUMBER,
    member_id_4 NUMBER,
);