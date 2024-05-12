-- Deploy: schemas/dashboard_public/tables/object_records/indexes/object_records_is_private_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_records/table
-- requires: schemas/dashboard_public/tables/object_records/columns/is_private/column

BEGIN;
CREATE INDEX object_records_is_private_idx ON "dashboard_public".object_records (is_private);
COMMIT;
