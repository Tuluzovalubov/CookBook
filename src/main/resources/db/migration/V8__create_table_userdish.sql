create table user_dishes
(
    id           bigint generated by default as identity,
    time_of_view timestamp,
    dish_id      bigint,
    user_id      bigint,
    primary key (id)
);
alter table if exists user_dishes
    add constraint FK_dishes_user_dishes foreign key (dish_id) references dishes;
alter table if exists user_dishes
    add constraint FK5_user_user_dishes foreign key (user_id) references users;
