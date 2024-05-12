-- Revert: schemas/dashboard_memberships_public/tables/app_owner_grants/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_owner_grants DROP COLUMN id;
COMMIT;  

