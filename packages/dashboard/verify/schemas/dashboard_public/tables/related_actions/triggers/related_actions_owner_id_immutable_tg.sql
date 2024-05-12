-- Verify: schemas/dashboard_public/tables/related_actions/triggers/related_actions_owner_id_immutable_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.related_actions_owner_id_immutable_tg');
COMMIT;  

