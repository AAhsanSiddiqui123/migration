-- Revert: schemas/dashboard_public/tables/action_language_variations/columns/id/alterations/alt0000001272 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_language_variations 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

