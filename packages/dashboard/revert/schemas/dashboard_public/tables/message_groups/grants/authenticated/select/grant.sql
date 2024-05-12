-- Revert: schemas/dashboard_public/tables/message_groups/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".message_groups FROM authenticated;
COMMIT;  

