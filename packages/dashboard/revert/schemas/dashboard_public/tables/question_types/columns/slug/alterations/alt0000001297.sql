-- Revert: schemas/dashboard_public/tables/question_types/columns/slug/alterations/alt0000001297 from pg

BEGIN;
ALTER TABLE "dashboard_public".question_types DROP CONSTRAINT question_types_slug_chk;
COMMIT;  

