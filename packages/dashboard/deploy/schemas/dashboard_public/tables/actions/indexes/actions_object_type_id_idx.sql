-- Deploy: schemas/dashboard_public/tables/actions/indexes/actions_object_type_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_public/tables/actions/columns/object_type_id/column

BEGIN;
CREATE INDEX actions_object_type_id_idx ON "dashboard_public".actions (object_type_id);
COMMIT;
