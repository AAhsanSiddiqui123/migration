-- Deploy: schemas/dashboard_public/tables/notifications/constraints/notifications_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notifications/table

BEGIN;

ALTER TABLE "dashboard_public".notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);
COMMIT;
