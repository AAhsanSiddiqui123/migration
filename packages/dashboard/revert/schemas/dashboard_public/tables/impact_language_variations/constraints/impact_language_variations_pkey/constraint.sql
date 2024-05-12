-- Revert: schemas/dashboard_public/tables/impact_language_variations/constraints/impact_language_variations_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".impact_language_variations 
    DROP CONSTRAINT impact_language_variations_pkey;

COMMIT;  

