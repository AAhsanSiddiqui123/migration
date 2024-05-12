-- Deploy: schemas/dashboard_public/tables/objects/indexes/objects_bbox_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/objects/table
-- requires: schemas/dashboard_public/tables/objects/columns/bbox/column

BEGIN;
CREATE INDEX objects_bbox_idx ON "dashboard_public".objects USING GIST (bbox);
COMMIT;
