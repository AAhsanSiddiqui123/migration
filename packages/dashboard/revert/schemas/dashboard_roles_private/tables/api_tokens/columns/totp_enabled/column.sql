-- Revert: schemas/dashboard_roles_private/tables/api_tokens/columns/totp_enabled/column from pg

BEGIN;


ALTER TABLE "dashboard_roles_private".api_tokens DROP COLUMN totp_enabled;
COMMIT;  

