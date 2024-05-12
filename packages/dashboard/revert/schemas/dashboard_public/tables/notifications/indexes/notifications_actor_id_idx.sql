-- Revert: schemas/dashboard_public/tables/notifications/indexes/notifications_actor_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".notifications_actor_id_idx;
COMMIT;  

