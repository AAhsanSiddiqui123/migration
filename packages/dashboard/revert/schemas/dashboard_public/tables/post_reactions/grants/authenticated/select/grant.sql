-- Revert: schemas/dashboard_public/tables/post_reactions/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".post_reactions FROM authenticated;
COMMIT;  

