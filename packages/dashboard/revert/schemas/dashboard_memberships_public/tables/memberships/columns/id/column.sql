-- Revert: schemas/dashboard_memberships_public/tables/memberships/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".memberships DROP COLUMN id;
COMMIT;  

