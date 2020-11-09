#查看当前连接的事务隔离级别
SELECT @@tx_isolation

#设置当前连接的事务隔离级别
SET tx_isolation ='SERIALIZABLE'

START TRANSACTION;

SELECT * FROM USER;

UPDATE USER SET PASSWORD='11111' WHERE username='aa';

COMMIT;