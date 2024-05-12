-- Revert: schemas/dashboard_memberships_public/tables/membership_types/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".membership_types DROP COLUMN name;
COMMIT;  

