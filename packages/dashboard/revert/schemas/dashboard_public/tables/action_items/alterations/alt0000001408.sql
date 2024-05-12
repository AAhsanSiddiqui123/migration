-- Revert: schemas/dashboard_public/tables/action_items/alterations/alt0000001408 from pg

BEGIN;
COMMENT ON TABLE "dashboard_public".action_items IS NULL;
COMMIT;  

