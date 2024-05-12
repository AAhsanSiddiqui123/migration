-- Revert: schemas/dashboard_public/tables/action_item_types/alterations/alt0000000800 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_types
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

