-- Revert: schemas/dashboard_public/tables/user_action_item_verifications/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_item_verifications
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

