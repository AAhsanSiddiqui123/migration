-- Revert: schemas/dashboard_public/tables/notifications/columns/actor_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".notifications DROP COLUMN actor_id;
COMMIT;  

