/*Create an index on the Member Name column to speed up searches.*/
CREATE INDEX IDX_MEMBERNAME
ON MEMBERS(MEMBERNAME);
