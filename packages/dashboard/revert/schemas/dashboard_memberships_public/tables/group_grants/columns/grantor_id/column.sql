-- Revert: schemas/dashboard_memberships_public/tables/group_grants/columns/grantor_id/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_grants DROP COLUMN grantor_id;
COMMIT;  

