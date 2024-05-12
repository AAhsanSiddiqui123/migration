-- Revert: schemas/dashboard_memberships_public/tables/memberships/columns/is_approved/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".memberships DROP COLUMN is_approved;
COMMIT;  

