-- Deploy: schemas/dashboard_invites_private/alterations/alt0000000466 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_private/schema

BEGIN;

GRANT USAGE ON SCHEMA "dashboard_invites_private" TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_invites_private" GRANT ALL ON TABLES TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_invites_private" GRANT ALL ON SEQUENCES TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA "dashboard_invites_private" GRANT ALL ON FUNCTIONS TO administrator;
COMMIT;
