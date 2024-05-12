-- Revert: schemas/dashboard_memberships_public/tables/group_grants/columns/is_grant/alterations/alt0000000364 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_grants 
    ALTER COLUMN is_grant DROP DEFAULT;

COMMIT;  

