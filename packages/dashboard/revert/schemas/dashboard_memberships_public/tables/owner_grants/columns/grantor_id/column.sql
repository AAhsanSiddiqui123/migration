-- Revert: schemas/dashboard_memberships_public/tables/owner_grants/columns/grantor_id/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".owner_grants DROP COLUMN grantor_id;
COMMIT;  

