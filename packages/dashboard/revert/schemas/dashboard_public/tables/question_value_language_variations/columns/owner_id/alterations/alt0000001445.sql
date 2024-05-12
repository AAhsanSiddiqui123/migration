-- Revert: schemas/dashboard_public/tables/question_value_language_variations/columns/owner_id/alterations/alt0000001445 from pg

BEGIN;


ALTER TABLE "dashboard_public".question_value_language_variations 
    ALTER COLUMN owner_id DROP DEFAULT;

COMMIT;  

