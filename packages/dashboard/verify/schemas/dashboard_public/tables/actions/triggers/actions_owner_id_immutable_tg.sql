-- Verify: schemas/dashboard_public/tables/actions/triggers/actions_owner_id_immutable_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.actions_owner_id_immutable_tg');
COMMIT;  

