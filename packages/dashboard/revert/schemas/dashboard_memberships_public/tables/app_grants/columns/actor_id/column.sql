-- Revert: schemas/dashboard_memberships_public/tables/app_grants/columns/actor_id/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_grants DROP COLUMN actor_id;
COMMIT;  

