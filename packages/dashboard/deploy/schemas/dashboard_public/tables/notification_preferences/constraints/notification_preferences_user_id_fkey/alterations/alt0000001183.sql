-- Deploy: schemas/dashboard_public/tables/notification_preferences/constraints/notification_preferences_user_id_fkey/alterations/alt0000001183 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notification_preferences/constraints/notification_preferences_user_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT notification_preferences_user_id_fkey ON "dashboard_public".notification_preferences IS E'@omit manyToMany';
COMMIT;
