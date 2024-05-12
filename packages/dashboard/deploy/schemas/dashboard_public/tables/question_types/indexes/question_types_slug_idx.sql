-- Deploy: schemas/dashboard_public/tables/question_types/indexes/question_types_slug_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_types/table
-- requires: schemas/dashboard_public/tables/question_types/columns/slug/column

BEGIN;
CREATE INDEX question_types_slug_idx ON "dashboard_public".question_types (slug);
COMMIT;
