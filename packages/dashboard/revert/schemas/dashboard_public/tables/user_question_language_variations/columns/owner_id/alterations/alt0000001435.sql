-- Revert: schemas/dashboard_public/tables/user_question_language_variations/columns/owner_id/alterations/alt0000001435 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_question_language_variations 
    ALTER COLUMN owner_id DROP DEFAULT;

COMMIT;  

