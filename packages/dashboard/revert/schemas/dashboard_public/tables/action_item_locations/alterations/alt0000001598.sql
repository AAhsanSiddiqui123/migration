-- Revert: schemas/dashboard_public/tables/action_item_locations/alterations/alt0000001598 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_locations
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

