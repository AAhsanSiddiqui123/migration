-- Revert: schemas/dashboard_memberships_public/tables/group_grants/columns/permissions/alterations/alt0000000362 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_grants 
    ALTER COLUMN permissions DROP DEFAULT;

COMMIT;  

