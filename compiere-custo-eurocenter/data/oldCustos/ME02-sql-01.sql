create or replace FUNCTION getTypeOrg(
    ORG_ID NUMBER)
  RETURN VARCHAR2
AS
  r_Type VARCHAR2(3);
BEGIN
  Select case when isPOS = 'Y' and isEggo = 'Y' then 'NEC' when IsPOS = 'Y' and isEggo = 'N' then 'EU' when isPOS = 'N' and isEggo='Y' then 'GO' end if into r_Type
  from AD_OrgInfo where AD_ORG_ID = ORG_ID;
  RETURN r_Type;
END; 