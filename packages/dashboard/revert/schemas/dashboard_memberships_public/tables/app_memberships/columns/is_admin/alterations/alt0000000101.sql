-- Revert: schemas/dashboard_memberships_public/tables/app_memberships/columns/is_admin/alterations/alt0000000101 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_memberships 
    ALTER COLUMN is_admin DROP NOT NULL;


COMMIT;  

