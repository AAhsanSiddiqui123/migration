-- Verify: schemas/dashboard_public/tables/action_item_types/triggers/action_item_types_ref_num_immutable_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.action_item_types_ref_num_immutable_tg');
COMMIT;  

