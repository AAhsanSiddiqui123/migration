-- Revert: schemas/dashboard_public/tables/notifications/indexes/notifications_recipient_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".notifications_recipient_id_idx;
COMMIT;  

