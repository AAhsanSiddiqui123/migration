-- Revert: schemas/dashboard_memberships_public/tables/memberships/columns/is_owner/alterations/alt0000000227 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".memberships 
    ALTER COLUMN is_owner DROP DEFAULT;

COMMIT;  

