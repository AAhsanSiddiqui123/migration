-- Revert: schemas/dashboard_memberships_public/tables/grants/columns/is_grant/alterations/alt0000000265 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".grants 
    ALTER COLUMN is_grant DROP DEFAULT;

COMMIT;  

