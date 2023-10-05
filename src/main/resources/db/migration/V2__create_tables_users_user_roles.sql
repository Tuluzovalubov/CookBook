create table user_roles
(
    id   bigint generated by default as identity,
    role varchar(255),
    primary key (id)
);
create table users
(
    id             bigint generated by default as identity,
    approved       boolean,
    date_of_create date,
    login          varchar(255),
    password       varchar(255),
    user_role_id   bigint,
    primary key (id)
);

alter table if exists users
    add constraint UK_user_login unique (login);
alter table if exists users
    add constraint FK_user_roles_user foreign key (user_role_id) references user_roles;