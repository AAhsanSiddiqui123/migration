-- Deploy: schemas/dashboard_public/tables/user_actions/grants/authenticated/insert/grant/alterations/alt0000000963 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_actions/table

BEGIN;
GRANT INSERT ( object_id ) ON TABLE "dashboard_public".user_actions TO authenticated;
COMMIT;
