-- Revert: schemas/dashboard_public/tables/notifications/constraints/notifications_actor_id_fkey/alterations/alt0000001173 from pg

BEGIN;
COMMENT ON CONSTRAINT notifications_actor_id_fkey ON "dashboard_public".notifications IS NULL;
COMMIT;  

