-- Revert: schemas/dashboard_memberships_public/tables/grants/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".grants DROP COLUMN id;
COMMIT;  

