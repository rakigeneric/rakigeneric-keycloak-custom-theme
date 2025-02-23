## rakigeneric keycloak custom login

### Reference


Please refer to the official Keycloak [documentation](https://www.keycloak.org/docs/latest/server_development/#_themes) to customize the theme.

For more information, check out the Keycloak GitHub repository [here](https://github.com/keycloak/keycloak/tree/main/themes/src/main/resources/theme/keycloak.v2/login).

To create a favicon, you can use this [favicon generator]((https://favicon.io/favicon-generator/) ).



## Notes

1. Under `rakigeneric-keycloak-custom-theme/login/resources/img`, **do not** change the image or favicon filenames. Instead, replace the existing images/favicons with the new ones, keeping the same names.
2. Currently, the background color in the stylesheet is overriding the background image (the black background color is preferred, so it has been kept as is).
3. The `login-NOT_IN_USE.ftl` file is not in use. You can add HTML content here if you wish to override the default behavior.
4. We are extending the theme from `keycloak.v2`. If Keycloak releases a new theme version, we will need to extend from that version to keep up with updates and improvements.


## To Test Locally

Run the following Docker command to start Keycloak locally:

```bash
sudo docker run --rm -p 8080:8080 \
-e KC_BOOTSTRAP_ADMIN_USERNAME=admin \
-e KC_BOOTSTRAP_ADMIN_PASSWORD=admin \
-v /data/rakigeneric/rakigeneric-library/rakigeneric-keycloak-custom-theme:/opt/keycloak/themes/rakigeneric-keycloak-custom-theme \
quay.io/keycloak/keycloak:26.0.7 start-dev --spi-theme-static-max-age=-1 \
--spi-theme-cache-themes=false \
--spi-theme-cache-templates=false \
--spi-theme-login-theme=rakigeneric-keycloak-custom-theme
```


These `spi*` settings enable hot reload during development. In production, you can omit them.

Once Keycloak is running, log in and change the login theme under the realm settings.


## Extend account page 

Reference 
- https://github.com/keycloak/keycloak-quickstarts/tree/main/extension 
- https://docs.keycloakify.dev/account-theme/multi-page
- https://framagit.org/lausitzer-surfer-eV/mitglieder-management/account-kc-theme/-/tree/main?ref_type=heads


## Credits
Designed and developed by Rakesh Nagarajan with ❤️


