-- Revert: schemas/dashboard_public/tables/message_groups/indexes/message_groups_member_ids_idx from pg

BEGIN;
DROP INDEX "dashboard_public".message_groups_member_ids_idx;
COMMIT;  

