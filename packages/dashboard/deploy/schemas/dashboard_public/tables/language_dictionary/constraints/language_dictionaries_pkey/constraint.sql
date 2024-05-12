-- Deploy: schemas/dashboard_public/tables/language_dictionary/constraints/language_dictionaries_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/language_dictionary/table

BEGIN;

ALTER TABLE "dashboard_public".language_dictionary
    ADD CONSTRAINT language_dictionaries_pkey PRIMARY KEY (id);
COMMIT;
