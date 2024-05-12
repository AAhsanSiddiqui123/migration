-- Deploy: schemas/dashboard_public/tables/question_types/indexes/question_types_ref_num_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/question_types/table
-- requires: schemas/dashboard_public/tables/question_types/columns/ref_num/column

BEGIN;
CREATE INDEX question_types_ref_num_idx ON "dashboard_public".question_types (ref_num);
COMMIT;
