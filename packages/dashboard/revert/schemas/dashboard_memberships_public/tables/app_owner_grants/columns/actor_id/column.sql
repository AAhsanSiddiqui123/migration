-- Revert: schemas/dashboard_memberships_public/tables/app_owner_grants/columns/actor_id/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_owner_grants DROP COLUMN actor_id;
COMMIT;  

