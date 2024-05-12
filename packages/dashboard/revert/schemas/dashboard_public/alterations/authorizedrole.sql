-- Revert dashboard:schemas/dashboard_public/alterations/authorizedrole from pg

BEGIN;

REVOKE USAGE ON SCHEMA "dashboard_public" FROM authorized;

COMMIT;
