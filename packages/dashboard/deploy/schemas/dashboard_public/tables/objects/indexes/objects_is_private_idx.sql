-- Deploy: schemas/dashboard_public/tables/objects/indexes/objects_is_private_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/objects/table
-- requires: schemas/dashboard_public/tables/objects/columns/is_private/column

BEGIN;
CREATE INDEX objects_is_private_idx ON "dashboard_public".objects (is_private);
COMMIT;
