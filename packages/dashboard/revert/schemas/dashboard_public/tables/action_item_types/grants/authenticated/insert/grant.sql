-- Revert: schemas/dashboard_public/tables/action_item_types/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".action_item_types FROM authenticated;
COMMIT;  

