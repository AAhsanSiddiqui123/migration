-- Revert: schemas/dashboard_memberships_public/tables/app_memberships/columns/actor_id/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_memberships DROP COLUMN actor_id;
COMMIT;  

