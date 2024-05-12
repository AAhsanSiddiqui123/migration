-- Revert: schemas/dashboard_memberships_public/tables/membership_types/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".membership_types DROP COLUMN id;
COMMIT;  

