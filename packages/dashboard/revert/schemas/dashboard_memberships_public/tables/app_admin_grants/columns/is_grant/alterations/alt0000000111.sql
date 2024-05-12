-- Revert: schemas/dashboard_memberships_public/tables/app_admin_grants/columns/is_grant/alterations/alt0000000111 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_admin_grants 
    ALTER COLUMN is_grant DROP NOT NULL;


COMMIT;  

