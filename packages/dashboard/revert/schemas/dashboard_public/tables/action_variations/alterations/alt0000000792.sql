-- Revert: schemas/dashboard_public/tables/action_variations/alterations/alt0000000792 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_variations
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

