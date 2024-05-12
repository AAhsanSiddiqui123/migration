-- Revert: schemas/dashboard_public/tables/user_action_reactions/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".user_action_reactions FROM authenticated;
COMMIT;  

