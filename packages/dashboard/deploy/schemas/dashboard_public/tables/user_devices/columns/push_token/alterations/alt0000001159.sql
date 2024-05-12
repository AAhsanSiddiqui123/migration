-- Deploy: schemas/dashboard_public/tables/user_devices/columns/push_token/alterations/alt0000001159 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_devices/table
-- requires: schemas/dashboard_public/tables/user_devices/columns/push_token/column

BEGIN;
ALTER TABLE "dashboard_public".user_devices ADD CONSTRAINT user_devices_push_token_chk CHECK (character_length(push_token) <= 1048);
COMMIT;
