-- Deploy: schemas/dashboard_public/tables/location_types/constraints/location_types_pkey/constraint/alterations/alt0000001489 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/location_types/table

BEGIN;

ALTER TABLE "dashboard_public".location_types
    ADD CONSTRAINT location_types_pkey PRIMARY KEY (id);
COMMIT;
