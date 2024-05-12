-- Revert: schemas/dashboard_public/tables/notifications/constraints/notifications_recipient_id_fkey/alterations/alt0000001174 from pg

BEGIN;
COMMENT ON CONSTRAINT notifications_recipient_id_fkey ON "dashboard_public".notifications IS NULL;
COMMIT;  

