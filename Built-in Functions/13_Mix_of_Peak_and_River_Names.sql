select p.peakname, r.rivername, lower(concat(substring(p.PeakName, 1, len(p.peakname) - 1), r.rivername)) as MIX from Peaks as p, Rivers as r
where right(p.peakname, 1) = left(r.rivername, 1)
order by MIX
