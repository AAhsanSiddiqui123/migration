-- Revert: schemas/dashboard_memberships_public/tables/grants/columns/actor_id/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".grants DROP COLUMN actor_id;
COMMIT;  

