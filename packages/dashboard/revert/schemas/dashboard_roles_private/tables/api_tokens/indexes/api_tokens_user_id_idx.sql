-- Revert: schemas/dashboard_roles_private/tables/api_tokens/indexes/api_tokens_user_id_idx from pg

BEGIN;
DROP INDEX "dashboard_roles_private".api_tokens_user_id_idx;
COMMIT;  

