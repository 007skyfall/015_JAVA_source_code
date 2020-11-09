
/*
要求4：查询价格低于30并且库存大于10的书名；
要求5：查询作者名字的首字母为J的书的书名和作者；
要求6：查询note为novel 出版时间在2000年以后的书的名字，出版日期，以及库存；
要求7: 查询价格比Old land低的所有书的名称。
*/
#查询价格低于30并且库存大于10的书名
SELECT b_name FROM books WHERE price<30 AND num>10;

#查询作者名字的首字母为J的书的书名和作者
SELECT b_name,authers FROM books WHERE authers LIKE 'J%';

#查询note为novel 出版时间在2000年以后的书的名字，出版日期，以及库存
SELECT b_name,pubdate,num FROM books WHERE note = 'novel' AND pubdate > 2000;

#查询价格比Old land低的所有书的名称
SELECT b_name FROM books 
WHERE price < (SELECT price FROM books WHERE b_name = 'Old land');

