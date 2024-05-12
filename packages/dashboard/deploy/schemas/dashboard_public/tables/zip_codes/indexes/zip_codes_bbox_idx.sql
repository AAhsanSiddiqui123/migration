-- Deploy: schemas/dashboard_public/tables/zip_codes/indexes/zip_codes_bbox_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/zip_codes/table
-- requires: schemas/dashboard_public/tables/zip_codes/columns/bbox/column

BEGIN;
CREATE INDEX zip_codes_bbox_idx ON "dashboard_public".zip_codes USING GIST (bbox);
COMMIT;
