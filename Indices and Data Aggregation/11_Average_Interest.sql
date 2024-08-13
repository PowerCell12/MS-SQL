select depositgroup, isdepositexpired, avg(depositinterest) FROM WizzardDeposits
where depositstartdate > '01/01/1985'
group by depositgroup, isdepositexpired
order by depositgroup desc, isdepositexpired
