<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'medo');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'KU.+=&NfWXscH83k(~]/-!pbt?UH+0lpta|1G<e|(lARmR%:Vv2J0nwqDi&^|`I*');
define('SECURE_AUTH_KEY',  ';[;lOkj&U+]`-7{i6uc C{!3onA6M**%w+4b _J0!W]IXmm2BPc`[LG4lNdKVRfK');
define('LOGGED_IN_KEY',    'ENH):I(T-s!TPdfUN6NqH9gG. k%)ux1R3b5>!|UOU@?%b+3jPByME.a/BLKI6g^');
define('NONCE_KEY',        '0l(}1Q}1?4=UFA+Fw5gsT}btFq9E??2y$V;{U;(?lvzZ17>hzpQH+w]7+ih$sIN<');
define('AUTH_SALT',        'ItEVNS3IM:v?]6QU}NU#Vr-vM2k}llC@Z1@f3EF&$&7?$Vv/>6#8k<P|u-km-l<W');
define('SECURE_AUTH_SALT', 'h+Dh_&0xt!&}5]wq|:5LvkdMhm:|P+Gqr2N6G3-p}6b:;e@R?F7Yd&.S YWxoVT8');
define('LOGGED_IN_SALT',   '>]=dW_ww+P!bw: 1]]zX<-{W_Lnzv4pL(_NknghRV-XR-kS^*{MLUEEn6kd,5p+,');
define('NONCE_SALT',       '3S_PZflne}KB,1d7p] We}(Y+J8*6*)-oDS||2Lt,7O55W2+|t}<?l_{],r!8VmB');
/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
