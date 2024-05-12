-- Deploy: schemas/dashboard_public/tables/form_types/indexes/form_types_ref_num_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_types/table
-- requires: schemas/dashboard_public/tables/form_types/columns/ref_num/column

BEGIN;
CREATE INDEX form_types_ref_num_idx ON "dashboard_public".form_types (ref_num);
COMMIT;
