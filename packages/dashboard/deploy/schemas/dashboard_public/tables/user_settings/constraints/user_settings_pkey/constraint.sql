-- Deploy: schemas/dashboard_public/tables/user_settings/constraints/user_settings_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_settings/table

BEGIN;

ALTER TABLE "dashboard_public".user_settings
    ADD CONSTRAINT user_settings_pkey PRIMARY KEY (id);
COMMIT;
