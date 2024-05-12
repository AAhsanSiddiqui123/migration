-- Deploy: schemas/dashboard_public/tables/action_items/indexes/action_items_coords_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_items/table
-- requires: schemas/dashboard_public/tables/action_items/columns/coords/column

BEGIN;
CREATE INDEX action_items_coords_idx ON "dashboard_public".action_items USING GIST (coords);
COMMIT;
