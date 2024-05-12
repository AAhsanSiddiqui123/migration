-- Revert: schemas/dashboard_public/tables/messages/indexes/messages_group_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".messages_group_id_idx;
COMMIT;  

