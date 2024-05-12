-- Revert: schemas/dashboard_public/tables/user_action_item_verifications/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".user_action_item_verifications FROM authenticated;
COMMIT;  

