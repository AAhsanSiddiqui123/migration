-- Deploy: schemas/dashboard_public/tables/action_item_types/indexes/action_item_types_ref_num_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_types/table
-- requires: schemas/dashboard_public/tables/action_item_types/columns/ref_num/column

BEGIN;
CREATE INDEX action_item_types_ref_num_idx ON "dashboard_public".action_item_types (ref_num);
COMMIT;
