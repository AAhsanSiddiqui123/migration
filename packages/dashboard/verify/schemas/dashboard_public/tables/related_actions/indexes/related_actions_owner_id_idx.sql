-- Verify: schemas/dashboard_public/tables/related_actions/indexes/related_actions_owner_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.related_actions', 'related_actions_owner_id_idx');
COMMIT;  

