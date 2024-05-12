-- Revert: schemas/dashboard_public/tables/action_language_variations/columns/action_id/alterations/alt0000001278 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_language_variations 
    ALTER COLUMN action_id DROP NOT NULL;


COMMIT;  

