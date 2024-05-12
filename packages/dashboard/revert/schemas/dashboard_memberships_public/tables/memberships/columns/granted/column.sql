-- Revert: schemas/dashboard_memberships_public/tables/memberships/columns/granted/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".memberships DROP COLUMN granted;
COMMIT;  

