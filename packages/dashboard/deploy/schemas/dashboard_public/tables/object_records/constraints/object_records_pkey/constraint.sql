-- Deploy: schemas/dashboard_public/tables/object_records/constraints/object_records_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_records/table

BEGIN;

ALTER TABLE "dashboard_public".object_records
    ADD CONSTRAINT object_records_pkey PRIMARY KEY (id);
COMMIT;
