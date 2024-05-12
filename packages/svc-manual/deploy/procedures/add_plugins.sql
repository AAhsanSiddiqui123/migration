-- Deploy procedures/add_plugins to pg
-- requires: procedures/add_service


BEGIN;

CREATE FUNCTION run_migration_plugin(
  vdatabase_id uuid,
  vdomain_name text
) returns void as $$
DECLARE
  vsite_id uuid;
  vapp_domain_id uuid;
  vapi_domain_id uuid;
  vapi_id uuid;

  vapi_subdomain hostname = 'api';
  vapp_subdomain hostname = 'app';
  -- vadmin_subdomain hostname = 'admin';
BEGIN

  SELECT id FROM
    meta_public.domains 
    WHERE domain = vdomain_name
    AND subdomain = vapp_subdomain
  INTO vapp_domain_id;

  SELECT id FROM
    meta_public.domains 
    WHERE domain = vdomain_name
    AND subdomain = vapi_subdomain
  INTO vapi_domain_id;

  SELECT id FROM
    meta_public.sites s
    WHERE domain_id = vapp_domain_id
  INTO vsite_id;

  SELECT id FROM
    meta_public.apis s
    WHERE domain_id = vapi_domain_id
  INTO vapi_id;

  /*
      _ _
     (_) |       
  ___ _| |_ ___  
 / __| | __/ _ \ 
 \__ \ | ||  __/ 
 |___/_|\__\___| 
  */

  INSERT INTO 
      meta_public.site_modules (
        database_id,
        site_id,
        name,
        data
      )
      VALUES (
        vdatabase_id,
        vsite_id,
        'user_auth_module',
        jsonb_build_object(
          'auth_schema', 'meta_public',
          'sign_in', 'login',
          'sign_up', 'register',
          'set_password', 'set_password',
          'reset_password', 'reset_password',
          'forgot_password', 'forgot_password',
          'send_verification_email', 'send_verification_email',
          'verify_email', 'verify_email'
        )
      );

  INSERT INTO 
      meta_public.site_modules (
        database_id,
        site_id,
        name,
        data
      )
      VALUES (
        vdatabase_id,
        vsite_id,
        'legal_terms_module',
        jsonb_build_object(
          'company', jsonb_build_object(
            'nick', 'Dashboard Earth',
            'name', 'Dashboard Earth, Inc.',
            'website', 'http://dashboard.earth/',
            'addr', ARRAY[
              '2326 Penmar Ave.',
              'Los Angeles, CA 90291'
            ],
            'legalCounty', 'Los Angeles',
            'legalState', 'California'
          ),
          'site', jsonb_build_object(
            'siteUrl', 'https://app.dbe.la',
            'www', 'app.dbe.la',
            'host', 'app.dbe.la'
          ),
          'emails', jsonb_build_object(
            'hello', 'info@dashboard.earth',
            'support', 'info@dashboard.earth',
            'abuse', 'info@dashboard.earth',
            'privacy', 'info@dashboard.earth',
            'legal', 'info@dashboard.earth',
            'copyright', 'info@dashboard.earth',
            'arbitrationOptOut', 'info@dashboard.earth'
          )
        )
      );

/*
  _   _                  
 | | | |                        
 | |_| |__   ___ _ __ ___   ___ 
 | __| '_ \ / _ \ '_ ` _ \ / _ \
 | |_| | | |  __/ | | | | |  __/
  \__|_| |_|\___|_| |_| |_|\___|
*/                              

-- bg f0f4f4

-- /index
-- that light green DBE5E4
-- that dark yellow 766543

  INSERT INTO 
      meta_public.site_themes (
        database_id,
        site_id,
        theme
      )
      VALUES (
        vdatabase_id,
        vsite_id,
        jsonb_build_object(
          'background', '#f0f4f4', -- super light color
          'primary', '#466968', -- dark dbe color
          'colors', ARRAY[
            '#9DB4B2', -- medium green
            '#DBE5E4', -- light green 
            '#766543' -- dark yellow
          ]
        )
      );

/*
              _ 
             (_)
   __ _ _ __  _ 
  / _` | '_ \| |
 | (_| | |_) | |
  \__,_| .__/|_|
       | |      
       |_|      
*/

  INSERT INTO 
      meta_public.api_modules (
        database_id,
        api_id,
        name,
        data
      )
      VALUES (
        vdatabase_id,
        vapi_id,
        'rls_module',
        jsonb_build_object(
          'authenticate_schema', 'dashboard_private',
          'authenticate', 'authenticate'
        )
      );

/*
   __ _ _ __  _ __  
  / _` | '_ \| '_ \ 
 | (_| | |_) | |_) |
  \__,_| .__/| .__/ 
       | |   | |    
       |_|   |_|    
*/

  INSERT INTO 
      meta_public.apps (
        database_id,
        site_id,
        name,
        app_image,
        app_store_link,
        app_store_id,
        app_id_prefix,
        play_store_link
      )
      VALUES (
        vdatabase_id,
        vsite_id,
        'Dashboard Earth',
        '{"url":"https://dl.airtable.com/.attachments/0a711ac3baa0f68f672915d145afd216/efbbaa12/default-app-image.png","mime":"image/png"}',
        'https://apps.apple.com/us/app/dashboard-earth/id1444355623',
        '1444355623',
        NULL,
        NULL
      );


END;
$$
LANGUAGE 'plpgsql' VOLATILE;


DO $LQLMIGRATION$
  DECLARE
  BEGIN

    PERFORM run_migration_plugin(
      vdatabase_id := '455a6e2c-3778-55f9-aca2-65ffa9b4a47c',
      vdomain_name := 'dbe.la'
    );

  END;
$LQLMIGRATION$;

DROP FUNCTION run_migration_plugin;

COMMIT;

