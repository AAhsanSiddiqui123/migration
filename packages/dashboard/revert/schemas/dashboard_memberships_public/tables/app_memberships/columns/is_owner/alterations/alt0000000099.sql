-- Revert: schemas/dashboard_memberships_public/tables/app_memberships/columns/is_owner/alterations/alt0000000099 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_memberships 
    ALTER COLUMN is_owner DROP NOT NULL;


COMMIT;  

