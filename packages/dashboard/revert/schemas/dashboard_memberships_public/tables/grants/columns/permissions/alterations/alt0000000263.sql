-- Revert: schemas/dashboard_memberships_public/tables/grants/columns/permissions/alterations/alt0000000263 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".grants 
    ALTER COLUMN permissions DROP DEFAULT;

COMMIT;  

