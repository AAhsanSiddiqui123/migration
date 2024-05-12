-- Revert: schemas/dashboard_public/tables/user_action_item_verifications/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".user_action_item_verifications FROM authenticated;
COMMIT;  

