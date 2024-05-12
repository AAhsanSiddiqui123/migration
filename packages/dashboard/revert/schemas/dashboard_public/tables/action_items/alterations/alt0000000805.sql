-- Revert: schemas/dashboard_public/tables/action_items/alterations/alt0000000805 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

