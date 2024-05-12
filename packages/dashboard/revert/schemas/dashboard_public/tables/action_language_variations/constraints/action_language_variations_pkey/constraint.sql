-- Revert: schemas/dashboard_public/tables/action_language_variations/constraints/action_language_variations_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".action_language_variations 
    DROP CONSTRAINT action_language_variations_pkey;

COMMIT;  

