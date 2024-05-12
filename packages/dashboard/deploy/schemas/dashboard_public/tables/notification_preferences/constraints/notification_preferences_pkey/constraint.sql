-- Deploy: schemas/dashboard_public/tables/notification_preferences/constraints/notification_preferences_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notification_preferences/table

BEGIN;

ALTER TABLE "dashboard_public".notification_preferences
    ADD CONSTRAINT notification_preferences_pkey PRIMARY KEY (id);
COMMIT;
