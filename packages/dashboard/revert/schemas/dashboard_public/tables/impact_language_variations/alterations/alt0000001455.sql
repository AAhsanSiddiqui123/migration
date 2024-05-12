-- Revert: schemas/dashboard_public/tables/impact_language_variations/alterations/alt0000001455 from pg

BEGIN;


ALTER TABLE "dashboard_public".impact_language_variations
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

