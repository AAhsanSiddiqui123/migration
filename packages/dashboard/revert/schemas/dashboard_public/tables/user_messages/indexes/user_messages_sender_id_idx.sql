-- Revert: schemas/dashboard_public/tables/user_messages/indexes/user_messages_sender_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".user_messages_sender_id_idx;
COMMIT;  

