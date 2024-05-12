-- Revert: schemas/dashboard_public/tables/notifications/constraints/notifications_actor_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".notifications 
    DROP CONSTRAINT notifications_actor_id_fkey;

COMMIT;  

