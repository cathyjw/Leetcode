#reference https://www.jianshu.com/p/75279d530693
UPDATE salary
SET sex= CASE sex
WHEN 'm' THEN 'f'
WHEN 'f' THEN 'm'
END;