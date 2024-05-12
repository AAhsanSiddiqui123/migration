-- Verify: schemas/dashboard_roles_private/tables/api_tokens/indexes/api_tokens_user_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_roles_private.api_tokens', 'api_tokens_user_id_idx');
COMMIT;  

