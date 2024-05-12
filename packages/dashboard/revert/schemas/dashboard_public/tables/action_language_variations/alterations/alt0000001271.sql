-- Revert: schemas/dashboard_public/tables/action_language_variations/alterations/alt0000001271 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_language_variations
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

