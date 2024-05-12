-- Deploy: schemas/dashboard_public/tables/data_tags/constraints/data_tags_name_key/alterations/alt0000001270 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/data_tags/constraints/data_tags_name_key/constraint

BEGIN;
COMMENT ON CONSTRAINT data_tags_name_key ON "dashboard_public".data_tags IS NULL;
COMMIT;
