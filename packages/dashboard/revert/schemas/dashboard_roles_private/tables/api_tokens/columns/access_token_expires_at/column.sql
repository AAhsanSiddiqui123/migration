-- Revert: schemas/dashboard_roles_private/tables/api_tokens/columns/access_token_expires_at/column from pg

BEGIN;


ALTER TABLE "dashboard_roles_private".api_tokens DROP COLUMN access_token_expires_at;
COMMIT;  

