-- Revert: schemas/dashboard_public/tables/message_groups/alterations/alt0000001047 from pg

BEGIN;


ALTER TABLE "dashboard_public".message_groups
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

