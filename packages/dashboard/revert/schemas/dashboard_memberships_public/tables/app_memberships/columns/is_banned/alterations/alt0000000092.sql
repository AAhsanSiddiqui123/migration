-- Revert: schemas/dashboard_memberships_public/tables/app_memberships/columns/is_banned/alterations/alt0000000092 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_memberships 
    ALTER COLUMN is_banned DROP DEFAULT;

COMMIT;  

