-- Revert: schemas/dashboard_memberships_public/tables/app_memberships/columns/is_approved/alterations/alt0000000090 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_memberships 
    ALTER COLUMN is_approved DROP DEFAULT;

COMMIT;  

