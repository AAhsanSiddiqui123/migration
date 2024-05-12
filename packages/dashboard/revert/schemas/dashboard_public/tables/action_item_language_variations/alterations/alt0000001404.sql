-- Revert: schemas/dashboard_public/tables/action_item_language_variations/alterations/alt0000001404 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_language_variations
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

