SELECT a.id_cid_pri, c.descricao, 
(select count(*) from aih.aih a1 where a1.id_apr=201301 and a1.id_cid_pri=a.id_cid_pri) as c201301,
(select count(*) from aih.aih a1 where a1.id_apr=201302 and a1.id_cid_pri=a.id_cid_pri) as c201302,
(select count(*) from aih.aih a1 where a1.id_apr=201303 and a1.id_cid_pri=a.id_cid_pri) as c201303,
(select count(*) from aih.aih a1 where a1.id_apr=201304 and a1.id_cid_pri=a.id_cid_pri) as c201304,
count(id_cid_pri) as total  

FROM aih.aih a 
left join public.tcid c on c.cid =  a.id_cid_pri
where a.id_apr in (201301,201302,201303,201304)
group by 1,2                                     
order by 7 desc;