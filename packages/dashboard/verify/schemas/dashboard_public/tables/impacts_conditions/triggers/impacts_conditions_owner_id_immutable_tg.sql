-- Verify: schemas/dashboard_public/tables/impacts_conditions/triggers/impacts_conditions_owner_id_immutable_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.impacts_conditions_owner_id_immutable_tg');
COMMIT;  

