-- Deploy: schemas/dashboard_public/tables/question_types/columns/slug/alterations/alt0000001297 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_types/table
-- requires: schemas/dashboard_public/tables/question_types/columns/slug/column

BEGIN;
ALTER TABLE "dashboard_public".question_types ADD CONSTRAINT question_types_slug_chk CHECK (character_length(slug) <= 2048);
COMMIT;
