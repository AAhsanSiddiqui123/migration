-- Revert: schemas/dashboard_memberships_public/tables/group_memberships/columns/is_owner/alterations/alt0000000325 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_memberships 
    ALTER COLUMN is_owner DROP NOT NULL;


COMMIT;  

