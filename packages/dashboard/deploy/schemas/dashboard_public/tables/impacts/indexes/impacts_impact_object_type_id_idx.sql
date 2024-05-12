-- Deploy: schemas/dashboard_public/tables/impacts/indexes/impacts_impact_object_type_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts/table
-- requires: schemas/dashboard_public/tables/impacts/columns/impact_object_type_id/column

BEGIN;
CREATE INDEX impacts_impact_object_type_id_idx ON "dashboard_public".impacts (impact_object_type_id);
COMMIT;
