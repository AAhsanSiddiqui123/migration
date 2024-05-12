-- Revert: schemas/dashboard_memberships_public/tables/admin_grants/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".admin_grants DROP COLUMN id;
COMMIT;  

