-- Revert: schemas/dashboard_roles_private/tables/api_tokens/columns/last_totp_verified/column from pg

BEGIN;


ALTER TABLE "dashboard_roles_private".api_tokens DROP COLUMN last_totp_verified;
COMMIT;  

