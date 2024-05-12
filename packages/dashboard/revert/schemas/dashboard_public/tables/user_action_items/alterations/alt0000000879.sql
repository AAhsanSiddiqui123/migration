-- Revert: schemas/dashboard_public/tables/user_action_items/alterations/alt0000000879 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_items
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

