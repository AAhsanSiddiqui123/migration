-- Deploy: schemas/dashboard_public/tables/action_status_types/constraints/action_status_types_ref_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_status_types/table

BEGIN;

ALTER TABLE "dashboard_public".action_status_types
    ADD CONSTRAINT action_status_types_ref_key UNIQUE (ref);
COMMIT;
