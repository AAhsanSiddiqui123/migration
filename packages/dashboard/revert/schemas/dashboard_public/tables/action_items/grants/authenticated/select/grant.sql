-- Revert: schemas/dashboard_public/tables/action_items/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".action_items FROM authenticated;
COMMIT;  

