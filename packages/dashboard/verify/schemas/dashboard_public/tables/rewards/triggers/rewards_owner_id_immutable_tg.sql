-- Verify: schemas/dashboard_public/tables/rewards/triggers/rewards_owner_id_immutable_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.rewards_owner_id_immutable_tg');
COMMIT;  

