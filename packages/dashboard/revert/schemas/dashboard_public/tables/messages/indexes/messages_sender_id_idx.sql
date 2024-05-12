-- Revert: schemas/dashboard_public/tables/messages/indexes/messages_sender_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".messages_sender_id_idx;
COMMIT;  

