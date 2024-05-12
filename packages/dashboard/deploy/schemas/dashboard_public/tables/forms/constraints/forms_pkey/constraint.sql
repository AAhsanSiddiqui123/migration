-- Deploy: schemas/dashboard_public/tables/forms/constraints/forms_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/forms/table

BEGIN;

ALTER TABLE "dashboard_public".forms
    ADD CONSTRAINT forms_pkey PRIMARY KEY (id);
COMMIT;
