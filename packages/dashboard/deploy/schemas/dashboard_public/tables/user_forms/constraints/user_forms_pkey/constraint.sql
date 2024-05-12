-- Deploy: schemas/dashboard_public/tables/user_forms/constraints/user_forms_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_forms/table

BEGIN;

ALTER TABLE "dashboard_public".user_forms
    ADD CONSTRAINT user_forms_pkey PRIMARY KEY (id);
COMMIT;
