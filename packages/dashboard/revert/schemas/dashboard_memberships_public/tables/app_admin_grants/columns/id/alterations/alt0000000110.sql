-- Revert: schemas/dashboard_memberships_public/tables/app_admin_grants/columns/id/alterations/alt0000000110 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_admin_grants 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

