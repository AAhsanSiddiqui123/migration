-- Revert: schemas/dashboard_public/tables/question_types/columns/id/alterations/alt0000001295 from pg

BEGIN;


ALTER TABLE "dashboard_public".question_types 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

