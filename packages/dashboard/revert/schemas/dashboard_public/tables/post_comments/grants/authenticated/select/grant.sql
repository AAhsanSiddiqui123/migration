-- Revert: schemas/dashboard_public/tables/post_comments/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".post_comments FROM authenticated;
COMMIT;  

