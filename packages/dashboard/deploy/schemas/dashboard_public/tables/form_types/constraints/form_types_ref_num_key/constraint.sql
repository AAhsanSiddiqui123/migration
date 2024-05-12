-- Deploy: schemas/dashboard_public/tables/form_types/constraints/form_types_ref_num_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/form_types/table

BEGIN;

ALTER TABLE "dashboard_public".form_types
    ADD CONSTRAINT form_types_ref_num_key UNIQUE (ref_num);
COMMIT;
