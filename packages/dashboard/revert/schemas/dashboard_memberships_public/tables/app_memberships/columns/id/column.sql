-- Revert: schemas/dashboard_memberships_public/tables/app_memberships/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_memberships DROP COLUMN id;
COMMIT;  

