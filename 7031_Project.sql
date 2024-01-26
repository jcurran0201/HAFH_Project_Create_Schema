
/* A */
SELECT aptno AS Most_Common_Apartment_Numbers
FROM apartment
GROUP BY aptno
ORDER BY COUNT(*) DESC;

/* B */
SELECT COUNT(DISTINCT aptno) Tota_Number_of_Unique_Apartment_Numbers
FROM apartment;

/* C */
SELECT COUNT(*) Number_of_Combos
FROM (SELECT buildingid, aptno FROM apartment) As c;

/* D */
SELECT buildingid
	, aptno
FROM apartment
WHERE CCID IS NULL;

/* E */ 
SELECT format(AVG(rent),2) Average_2bed_rentprice
FROM apartment
WHERE anoofbedrooms = 2;

/* F */
SELECT COUNT(DISTINCT buildingid) Total_Number_of_Buildings
FROM apartment;

/* G */ -- Come back
SELECT buildingid 'Widest price range building'
FROM (
Select buildingid, max(rent) - min(rent) As price_range
from apartment
group by buildingid
) As price_ranges
order by price_range desc;

/* H */
SELECT mfname
	, mlname
    , msalary
    , mbdate
FROM manager
ORDER BY mbdate ASC;

/* I */
SELECT mfname
    , mlname
    , mbonus AS max_bonus
FROM manager
ORDER BY mbonus DESC;

/* J */ -- this one was hard
WITH ManagerBuildingCounts AS (
    SELECT
        m.mfname,
        m.mlname,
        COUNT(b.bmanagerid) AS num_managed_buildings
    FROM
        building b
        JOIN manager m ON b.bmanagerid = m.managerid
    GROUP BY
        bmanagerid
)
SELECT
    mfname,
    mlname,
    num_managed_buildings
FROM
    ManagerBuildingCounts
WHERE
    num_managed_buildings = (
        SELECT MAX(num_managed_buildings)
        FROM ManagerBuildingCounts
    );

/* K */
SELECT m.mfname
    , m.mlname
    , p.mphone
FROM manager m
JOIN building b ON m.managerid = b.bmanagerid
JOIN inspecting i ON b.buildingid = i.buildingid
JOIN managerphone p ON m.managerid = p.managerid
JOIN inspector insp ON i.insid = insp.insid
WHERE insp.insname = "Bianca"
GROUP BY m.mfname, m.mlname, p.mphone;

/* L */ -- stuck
SELECT c.ccname, a.buildingid, a.aptno
	, COUNT(c.ccname)
FROM corpclient c
JOIN corpclient r
	ON c.ccid = r.ccidreferredby
JOIN apartment a
	ON c.ccid = a.ccid
GROUP BY c.ccname, a.buildingid, a.aptno;

/* M */
SELECT ccname 'Non-referred corporate clients'
FROM corpclient
WHERE ccidreferredby IS NULL;

/* N */
SELECT s.smembername
	, COUNT(c.smemberid) AS 'No. of Apartments Cleaned'
FROM cleaning c
JOIN staffmember s ON c.smemberid = s.smemberid
GROUP BY c.smemberid
HAVING COUNT(c.smemberid) = (
    SELECT MIN(apartments_cleaned)
    FROM (
        SELECT COUNT(c.smemberid) AS apartments_cleaned
        FROM cleaning c
        JOIN staffmember s ON c.smemberid = s.smemberid
        GROUP BY c.smemberid
    ) AS subquery
)
ORDER BY COUNT(c.smemberid) ASC;

/* O */ -- 
SELECT s.smembername
	, c.buildingid
    , c.aptno
FROM staffmember s
JOIN cleaning c ON s.smemberid = c.smemberid
WHERE s.smemberid IN (
    SELECT smemberid
    FROM cleaning
    GROUP BY smemberid
    HAVING COUNT(*) = (
        SELECT MIN(apartments_cleaned)
        FROM (
            SELECT COUNT(*) AS apartments_cleaned
            FROM cleaning
            GROUP BY smemberid
        ) AS subquery
    )
);

    
