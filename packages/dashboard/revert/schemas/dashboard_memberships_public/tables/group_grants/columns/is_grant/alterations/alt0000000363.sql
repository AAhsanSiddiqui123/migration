-- Revert: schemas/dashboard_memberships_public/tables/group_grants/columns/is_grant/alterations/alt0000000363 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_grants 
    ALTER COLUMN is_grant DROP NOT NULL;


COMMIT;  

