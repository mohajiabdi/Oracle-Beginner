show user;

show con_name;

--clean screen or cl scr;

-- alter session set container = orclpdb;

-- 12.1 r1 === pdborcl
-- 12.2 r2 === orclpdb
-- 19.3  ===== orclpdb


-- Checking content stats of db 

alter session set container = orclpdb;

select name, open_mode from r$pdbs;

-- altering if its mounted
    --alter pluggable database open;
    
    
alter session set container = orclpdb;

alter pluggable database orclpdb open;
    

