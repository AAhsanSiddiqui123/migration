-- Revert: schemas/dashboard_public/tables/action_item_status_types/alterations/alt0000001651 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_status_types
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

