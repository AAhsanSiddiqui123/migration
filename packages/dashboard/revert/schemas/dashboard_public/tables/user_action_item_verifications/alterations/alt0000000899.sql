-- Revert: schemas/dashboard_public/tables/user_action_item_verifications/alterations/alt0000000899 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_item_verifications
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

