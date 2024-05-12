-- Revert: schemas/dashboard_public/tables/user_action_item_verifications/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".user_action_item_verifications FROM authenticated;
COMMIT;  

