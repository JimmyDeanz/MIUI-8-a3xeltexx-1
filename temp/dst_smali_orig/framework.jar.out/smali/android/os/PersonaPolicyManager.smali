.class public Landroid/os/PersonaPolicyManager;
.super Ljava/lang/Object;
.source "PersonaPolicyManager.java"


# static fields
.field public static final AIRCOMMAND:Ljava/lang/String; = "airCommand"

.field public static final AIRCOMMAND_DEFAULT:Z = true

.field public static final ALLSHARE:Ljava/lang/String; = "allShare"

.field public static final ALLSHARE_DEFAULT:Z = false

.field public static final BOOKMARKS:Ljava/lang/String; = "Bookmarks"

.field public static final CALENDAR:Ljava/lang/String; = "Calendar"

.field public static final CALL_LOG:Ljava/lang/String; = "CallLog"

.field public static final CAMERA_MODE:Ljava/lang/String; = "cameraMode"

.field public static final CAMERA_MODE_DEFAULT:Z = false

.field public static final CLIPBOARD:Ljava/lang/String; = "Clipboard"

.field private static final CLONE_TO_KNOX_PROFILE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTACTS:Ljava/lang/String; = "Contacts"

.field public static final CONTACTS_IMPORT_EXPORT:Ljava/lang/String; = "contacts-import-export"

.field public static final CONTAINER_RESET:Ljava/lang/String; = "containerReset"

.field public static final CONTAINER_RESET_DEFAULT:Z = false

.field public static final CUSTOM_BADGEICON:Ljava/lang/String; = "customBadgeIcon"

.field public static final CUSTOM_BADGEICON_DEFAULT:Z = true

.field public static final CUSTOM_COLORIDENTIFICATION:Ljava/lang/String; = "customColorIdentification"

.field public static final CUSTOM_COLORIDENTIFICATION_DEFAULT:Z = true

.field public static final CUSTOM_PERSONAICON:Ljava/lang/String; = "customPersonaIcon"

.field public static final CUSTOM_PERSONAICON_DEFAULT:Z = true

.field public static final DEFAULT_APPS:Ljava/lang/String; = "DefaultApps"

.field public static final DISABLE_SWITCHWIDGET:Ljava/lang/String; = "disableSwitchWidget"

.field public static final DISABLE_SWITCHWIDGET_DEFAULT:Z = false

.field public static final DLNA_DATATRANSFER:Ljava/lang/String; = "dlnaDataTransfer"

.field public static final DLNA_DATATRANSFER_DEFAULT:Z = false

.field public static final ENCRYPTION:Ljava/lang/String; = "encryption"

.field public static final ENCRYPTION_DEFAULT:Z = true

.field private static final EXCLUDE_IN_COM:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXPORT_AND_DELETE_FILES:Ljava/lang/String; = "exportAndDeleteFiles"

.field public static final EXPORT_AND_DELETE_FILES_DEFAULT:Z = false

.field public static final EXPORT_DATA:Ljava/lang/String; = "knox-export-data"

.field public static final EXPORT_FILES:Ljava/lang/String; = "exportFiles"

.field public static final EXPORT_FILES_DEFAULT:Z = false

.field public static final GEAR_SUPPORT:Ljava/lang/String; = "gearSupport"

.field public static final GEAR_SUPPORT_DEFAULT:Z = true

.field public static final IMPORT_DATA:Ljava/lang/String; = "knox-import-data"

.field public static final IMPORT_FILES:Ljava/lang/String; = "importFiles"

.field public static final IMPORT_FILES_DEFAULT:Z = true

.field public static final MODIFY_TIMEOUT:Ljava/lang/String; = "modifyTimeout"

.field public static final MODIFY_TIMEOUT_DEFAULT:Z = true

.field public static final NOTIFICATIONS:Ljava/lang/String; = "Notifications"

.field public static final PASSWORD_LOCK:Ljava/lang/String; = "passwordLock"

.field public static final PASSWORD_LOCK_DEFAULT:Z = true

.field public static final PENWINDOW:Ljava/lang/String; = "penWindow"

.field public static final PENWINDOW_DEFAULT:Z = true

.field public static final PRINT:Ljava/lang/String; = "print"

.field public static final PRINT_DEFAULT:Z = false

.field public static final SANITIZE_DATA:Ljava/lang/String; = "knox-sanitize-data"

.field public static final SANITIZE_DATA_LOCKSCREEN:Ljava/lang/String; = "knox-sanitize-data-lockscreen"

.field public static final SCREEN_CAPTURE_DEFAULT:Z = false

.field public static final SECURE_KEYSTORE:Ljava/lang/String; = "secureKeystore"

.field public static final SECURE_KEYSTORE_DEFAULT:Z = true

.field private static final SETTINGS_FOR_COM:[Ljava/lang/String;

.field private static final SHARE_WITH_KNOX:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHORTCUTS:Ljava/lang/String; = "Shortcuts"

.field public static final SHORTCUT_CREATION:Ljava/lang/String; = "shortcutCreation"

.field public static final SHORTCUT_CREATION_DEFAULT:Z = true

.field public static final SMS:Ljava/lang/String; = "Sms"

.field public static final SWITCH_NOTIF:Ljava/lang/String; = "switchNotif"

.field public static final SWITCH_NOTIF_DEFAULT:Z = true

.field public static final SYNC_ALL_CONTACTS:Ljava/lang/String; = "all_contacts"

.field public static final SYNC_FAVOURITE_CONTACTS:Ljava/lang/String; = "fav_contacts"

.field private static TAG:Ljava/lang/String; = null

.field public static final UNIVERSAL_CALLER_ID:Ljava/lang/String; = "universalCallerId"

.field public static final UNIVERSAL_CALLER_ID_DEFAULT:Z = true


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/content/pm/IPersonaPolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v0, "PersonaPolicyManager"

    sput-object v0, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_IN_COM:Ljava/util/HashSet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/os/PersonaPolicyManager;->CLONE_TO_KNOX_PROFILE:Ljava/util/Set;

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "mobile_keyboard"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "fingerprint_used_samsungaccount"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "fingerprint_samsungaccount_confirmed"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "fingerprint_webpass"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "sound_alive_effect"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "k2hd_effect"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "tube_amp_effect"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "intelligent_screen_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "intelligent_sleep_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "intelligent_rotation_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "all_sound_off"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "callsettings_answer_memo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "mono_audio_db"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "driving_mode_chaton_call_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "settings_gridui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "volume_music_speaker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "volume_ring_speaker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "volume_notification_speaker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "volume_system_speaker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "screen_mode_automatic_setting"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "screen_mode_setting"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "flip_font_style"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "led_indicator_low_battery"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "smart_bonding"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "hdmi_audio_output"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "dock_sounds_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "cradle_enable"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "automatic_unlock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "power_sharing_cable"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "screen_off_timeout_rollback"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "notification_sound_2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "enabled_accessibility_s_talkback"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_large_cursor"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_cursor_color"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "show_button_background"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "dormant_switch_onoff"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "dormant_disable_incoming_calls"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "dormant_disable_notifications"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "dormant_disable_alarm_and_timer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "dormant_disable_led_indicator"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "dormant_always"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "dormant_start_hour"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "dormant_start_min"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "dormant_end_hour"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "dormant_end_min"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "dormant_allow_list"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "screen_off_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "screen_brightness"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "screen_brightness_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "screen_auto_brightness_adj"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "auto_brightness_detail"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "volume_ring"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "volume_system"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "volume_voice"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "volume_music"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "volume_alarm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "volume_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "volume_bluetooth_sco"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "volume_system_enforced"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "volume_DTMF"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "volume_tts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "volume_enforced"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "volume_master"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "volume_master_mute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "volume_waiting_tone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "vibrate_in_silent"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "auto_replace"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "auto_caps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "auto_punctuate"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "high_contrast"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "font_size"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "power_key_hold"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "talkback_power_key_hold"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "flash_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "easy_interaction"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "notification_reminder"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "time_key"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "direct_access"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "direct_accessibility"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "direct_talkback"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "direct_negative"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "direct_access_control"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_auto_haptic"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_magnifier"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "hover_zoom_value"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "hover_zoom_magnifier_size"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "color_blind"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "color_blind_test"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "lcd_curtain"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "ultrasonic_cane"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "rapid_key_input"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "rapid_key_input_menu_checked"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "auto_rotation_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "direct_access"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "time_12_24"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "date_format"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accelerometer_rotation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "user_rotation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "hide_rotation_lock_toggle_for_accessibility"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "sound_effects_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "haptic_feedback_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "haptic_feedback_extra"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "VIB_FEEDBACK_MAGNITUDE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "VIB_RECVCALL_MAGNITUDE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "VIB_NOTIFICATION_MAGNITUDE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "power_saving_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "blackgrey_powersaving_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "data_powersaving_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "auto_adjust_touch"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "button_key_light"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "notification_light_pulse"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "pointer_location"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "show_touches"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "display_battery_level"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "pointer_speed"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "motion_engine"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "master_motion"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "motion_shake"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "motion_zooming"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "motion_zooming_sensitivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "motion_tilt_to_list_scrolling"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "motion_tilt_to_scroll_list_sensitivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "motion_panning"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "motion_panning_sensitivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "motion_pan_to_browse_image"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "motion_pan_to_browse_image_sensitivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "motion_double_tap"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "motion_overturn"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "motion_pick_up"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "motion_pick_up_to_call_out"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "motion_peek_view_albums_list"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "motion_peek_chapter_preview"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "motion_shake_scan_guide_show_again"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "motion_shake_refresh_guide_show_again"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "motion_zooming_guide_show_again"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "surface_motion_engine"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "surface_palm_swipe"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "surface_palm_touch"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "surface_tap_and_twist"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "motion_unlock_camera_short_cut"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "motion_merged_mute_pause"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_engine"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_glance_view"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_web_navigate"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_note_swap"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_scroll"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_item_move"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_clip"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_call_accept"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_turn"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_wake_up"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "master_side_motion"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "side_motion_one_hand_operation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "side_motion_peek"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "master_arc_motion"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "arc_motion_browse"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "arc_motion_ripple_effect"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "arc_motion_quick_glance"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "arc_motion_call_accept"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "arc_motion_search"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "arc_motion_always"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "arc_motion_music_playback"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "arc_motion_messaging"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "camera_quick_access"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_scroll_all_list"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_scroll_web_page"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_scroll_contact_list"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_scroll_email_list"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_scroll_album_and_photo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_scroll_email_body"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_turn_single_photo_view"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_turn_internet_window"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_turn_now_playing_on_music"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_turn_bgm_on_lock_screen"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_turn_note_page_view"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_motion_call_accept_auto_start_speaker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_view_master_onoff"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_view_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "air_button_onoff"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "finger_air_view"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "finger_air_view_highlight"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "finger_air_view_magnifier"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "finger_air_view_show_up_indicator"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "finger_air_view_information_preview"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "finger_air_view_full_text"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "finger_air_view_pointer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "finger_air_view_pregress_bar_preview"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "finger_air_view_speed_dial_tip"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "finger_air_view_sound_and_haptic_feedback"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "notification_panel_brightness_adjustment"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "led_indicator_charing"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "led_indicator_missed_event"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "led_indicator_voice_recording"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "led_indicator_incoming_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "any_screen_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "any_screen_running"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "hand_adaptable_operation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "onehand_dialer_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "onehand_samsungkeypad_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "onehand_calculator_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "onehand_pattern_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "longlife_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "smart_pause"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "smart_scroll"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "grip_rotation_lock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "smart_scroll_type"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "smart_scroll_sensitivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "smart_scroll_unit"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "smart_scroll_acceleration"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "smart_scroll_visual_feedback_icon"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "smart_scroll_adv_web"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "smart_scroll_adv_email_list"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "smart_scroll_adv_email_body"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "smart_scroll_adv_readers_hub"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "smart_scroll_adv_chrome"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "smart_scroll_adv_gmail_body"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "face_smart_scroll"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "smart_motion"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "display_battery_percentage"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "edit_after_screen_capture"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "open_camera"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accelerometer_rotation_second"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "key_night_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "key_backlight_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "pen_hovering"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "pen_hovering_pointer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "pen_hovering_information_preview"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "pen_hovering_progress_preview"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "pen_hovering_speed_dial_preview"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "pen_hovering_webpage_magnifier"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "pen_hovering_icon_label"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "pen_hovering_list_scroll"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "pen_hovering_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "pen_hovering_ripple_effect"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "pen_hovering_ink_effect"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "pen_hovering_air_menu"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "pen_detachment_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "pen_detachment_alert"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "pen_detach_application"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "pen_detachment_state"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "pen_detect_mode_disabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "pen_gesture_guide"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "pen_applications"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "pen_writing_buddy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "pen_writing_buddy_text_suggestion"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "lockscreen_sounds_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "driving_mode_incoming_call_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "driving_mode_message_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "driving_mode_air_call_accept"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "driving_mode_email_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "driving_mode_voice_mail_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "driving_mode_alarm_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "driving_mode_schedule_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "driving_mode_unlock_screen_contents"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "driving_mode_message_contents"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "direct_samsung_screen_reader"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "enabled_accessibility_samsung_screen_reader"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "enabled_accessibility_services"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "touch_exploration_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "touch_exploration_granted_accessibility_services"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "speak_password"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_script_injection"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_script_injection_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_web_content_key_bindings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_display_magnification_scale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_display_magnification_auto_update"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_locale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_preset"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_background_color"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_foreground_color"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_edge_type"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_edge_color"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_typeface"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_font_scale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "accessibility_sec_captioning_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "color_blind_cvdtype"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "long_press_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "color_blind_cvdseverity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "color_blind_user_parameter"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "tts_default_rate"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "tts_default_pitch"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "tts_default_synth"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "tts_default_locale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "tts_enabled_plugins"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "selected_spell_checker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "selected_spell_checker_subtype"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "incall_power_button_behavior"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "ui_night_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "wifi_hotspot20_enable"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "lock_screen_allow_private_notifications"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "lock_screen_show_notifications"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "select_icon_1"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "select_icon_2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "select_name_1"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "select_name_2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "hearing_aid"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "torch_light"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "spen_feedback_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "spen_feedback_sound_air_command"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "pen_writing_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "spen_feedback_sound_air_view"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "spen_feedback_haptic"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "spen_feedback_haptic_air_command"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "spen_feedback_haptic_air_view"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "pen_writing_haptic_feedback"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "spen_feedback_haptic_pen_gesture"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "voicecall_type"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "show_password"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "location_providers_allowed"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "allowed_geolocation_origins"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "location_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "short_press_app"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "long_press_app"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "double_press_app"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "bluetooth_a2dp_uhqa_support"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "bluetooth_a2dp_uhqa_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    const-string v1, "install_non_market_apps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "enabled_accessibility_services"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "touch_exploration_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "touch_exploration_granted_accessibility_services"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "speak_password"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_script_injection"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_script_injection_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_web_content_key_bindings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_display_magnification_scale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_display_magnification_auto_update"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_locale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_preset"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_background_color"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_foreground_color"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_edge_type"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_edge_color"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_typeface"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_captioning_font_scale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_sec_captioning_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "color_blind_cvdtype"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "long_press_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "color_blind_cvdseverity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "color_blind_user_parameter"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "tts_default_rate"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "tts_default_pitch"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "tts_default_synth"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "tts_default_locale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "tts_enabled_plugins"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "selected_spell_checker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "selected_spell_checker_subtype"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "incall_power_button_behavior"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "ui_night_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_hotspot20_enable"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "lock_screen_allow_private_notifications"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "lock_screen_show_notifications"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "location_providers_allowed"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "allowed_geolocation_origins"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "location_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "enabled_accessibility_samsung_screen_reader"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "bluetooth_a2dp_uhqa_support"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "bluetooth_a2dp_uhqa_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "enabled_accessibility_s_talkback"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_large_cursor"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "accessibility_cursor_color"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "install_non_market_apps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_IN_COM:Ljava/util/HashSet;

    const-string v1, "air_button_onoff"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_IN_COM:Ljava/util/HashSet;

    const-string v1, "pen_detach_application"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->CLONE_TO_KNOX_PROFILE:Ljava/util/Set;

    const-string v1, "notification_sound_CONSTANT_PATH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/PersonaPolicyManager;->CLONE_TO_KNOX_PROFILE:Ljava/util/Set;

    const-string v1, "notification_sound"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x11a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "wifi_ap_settings"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "nfc_android_beam_help"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android_beam_settings"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "nfc_payment_settings"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "toggle_airplane"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "smart_bonding_settings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "wfc_settings_holder_key"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "volume_setting"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sound"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "notifications"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sound_mode"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ds_ring_tone"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "notification_sound"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "touch_sounds"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "dial_pad_tones"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "screen_locking_sounds"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "keyboard_sound"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "notifications_sub_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "system_sounds"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "mms_sound"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "mms_sound_ds"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "splanner_sound"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "vibrations"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "vibration_feedback_intensity"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "phone_vibration"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "vibrate_when_ringing"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "vibrate_on_touch"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "keyboard_vibration"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "key_simple_led_indicator_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "secbrightness"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "outdoor_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "font_preview"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "screen_timeout"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "smartscreen_stay"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "pick_up_to_call_out_switch"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "pick_up_switch"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "merged_mute_or_pause_switch"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "screen_pinning_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "show_password"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "other_security_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "finger_scanner"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "key_privacy"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "key_location"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "location_e911"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "location_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "improve_location"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "permission_location"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "managed_profile_location_category"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "managed_profile_location_switch"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "recent_location_requests"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "location_services"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "vision_preferences"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "audio_preference_key"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "mobility_preference_key"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "categories_category"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "moresettings_category"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "direct_access"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "direct_access_guide"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "direct_access_category"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "direct_accessibility"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "direct_talkback"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "direct_s_talkback"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "direct_page_reader"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "direct_magnifier"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "direct_negative"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "direct_greyscale"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "direct_color_adjustment"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "direct_accesscontrol"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "toggle_easy_interaction_preference"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "com.samsung.android.app.talkback/com.samsung.android.app.talkback.TalkBackService"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "talkback_tutorial_preference"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "lcd_curtain"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "rapid_key_input"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "toggle_speak_password_preference"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "screen_magnification_preference_screen"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "magnifier_preference_screen"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "greyscale_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "high_contrast"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "color_blind"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "toggle_inversion_preference"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "daltonizer_preference_screen"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "enable_global_gesture_preference_screen"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "tts_settings_preference"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "tts_engine_preference_section"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "tts_general_section"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "tts_default_rate"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "tts_play_example"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "tts_status"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "sound_detector_plus_preference"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "flash_notification_key"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "all_sound_off_key"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "google_captioning_preference_screen"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "standard"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "captioning_locale"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "captioning_font_size"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "captioning_preset"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "custom"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "captioning_typeface"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "captioning_foreground_color"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "captioning_foreground_opacity"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "captioning_edge_type"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "captioning_edge_color"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "captioning_background_color"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "captioning_background_opacity"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "captioning_window_color"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "captioning_window_opacity"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "mono_audio_key"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "auto_haptic_key"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "assistant_menu_preference"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "air_wake_up"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "select_long_press_timeout_preference"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "menu_edit"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "dominant_hand_side"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "fmpad_size"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "fmpointer_size"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "fmpointer_speed"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "magnifier_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "magnifier_size"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "auto_time"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "auto_zone"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "time"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "timezone"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "24 hour"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "software_version"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "hardware_version_spr"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "system_update_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "software_update_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "software_update_settings_no_subtree"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "system_update_settings_na_gsm"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "additional_system_update_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "diagnostics_and_usage"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "icon_glossary"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "plmn_update_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "status_info"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "status_info_vzw"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "sim_card_status"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "ctc_epush"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "container"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "telespree_activation"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "service_information"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "ntc_approval"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "device_name"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "regulatory_info"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "device_feedback"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "device_model"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "software_info"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "firmware_version"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "security_patch"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "fcc_equipment_id"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "baseband_version"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "installed_variant_version"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "kernel_version"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "build_number"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "selinux_status"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "csb_value"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "hardware_version"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "country_certification_info"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "security_sw_version"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "knox_version"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "omc_version"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "sdm_config_version"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "battery_life"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "battery_level"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "battery_status"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "battery_info"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "fcc_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "rated_value"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "battery_capacity"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "customer_services"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "update"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "auto_update"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "device_info_software_update"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "device_info_software_update_auto_update"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "scheduled_update"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "wifi_only"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "update_prl"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "update_profile"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "uicc_unlock"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "copyright"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "license"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "terms"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "webview_license"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "wallpaper_attributions"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "samsung_legal"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "safetyinfomation"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "privacy_alert"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "divx_license_settings"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "ring_volume"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "media_volume"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "notification_volume"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "alarm_volume"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "system_volume"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "waiting_tone_volume"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "waiting_tone_volume_explanation"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "unlock_set_or_change"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "show_information"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "lock_screen_menu_notifications"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "secured_lock_settigns"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "swipe_lock_settings"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "use_screen_lock"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "advanced_security"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "security_category"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "battery_usage_desc"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "powersaving"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "ultra_powersaving"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "display_battery_level"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "battery_history"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "support_web_signin"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "key_fingerprint_add"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "unlock_set_pattern"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "unlock_set_pin"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "unlock_set_password"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "fingerprint_category"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "key_fingerprint_item_1"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "key_fingerprint_item_2"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "key_fingerprint_item_3"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "key_fingerprint_item_4"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "mac_address"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "current_ip_address"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "frequency_band"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "notify_open_networks"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "sleep_policy"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "wifi_poor_network_detection"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "att_auto_connect"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "install_credentials"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "wifi_assistant"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "wifi_hs20_enable"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "wlan_notify_cmcc"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "wifi_connection_type"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "wifi_reset"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "storage_space"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "storage_used"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "change_storage_button"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "total_size"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "app_size"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "data_size"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "clear_data_button"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "cache_size"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "clear_cache_button"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "header_view"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "storage_settings"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "data_settings"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "permission_settings"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "notification_settings"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "preferred_settings"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "battery"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "memory"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "wifi_always_scanning"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "bluetooth_always_scanning"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "header_view"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "storage_settings"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "data_settings"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "permission_settings"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "notification_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x100

    const-string v2, "preferred_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const-string v2, "high_accuracy"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const-string v2, "battery_saving"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string v2, "sensors_only"

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const-string v2, "ring_vibration"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string v2, "notification_vibration"

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const-string v2, "system_vibration"

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const-string v2, "health_safety"

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const-string v2, "warranty"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const-string v2, "end_user_license_agreement"

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const-string v2, "key_writing_buddy"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const-string v2, "key_spen_pointer_switch"

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const-string v2, "loss_prevention_alert"

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const-string v2, "key_additional_feedback_pen_sound"

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const-string v2, "key_additional_feedback_pen_haptic"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string v2, "rename_device"

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const-string v2, "unpair"

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const-string v2, "profile_container"

    aput-object v2, v0, v1

    const/16 v1, 0x112

    const-string v2, "PAN"

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const-string v2, "profile_container"

    aput-object v2, v0, v1

    const/16 v1, 0x114

    const-string v2, "HEADSET"

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const-string v2, "A2DP"

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const-string v2, "AVRCP_CONTROLLER"

    aput-object v2, v0, v1

    const/16 v1, 0x117

    const-string v2, "PAN"

    aput-object v2, v0, v1

    const/16 v1, 0x118

    const-string v2, "INPUT_DEVICE"

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const-string v2, "MAP"

    aput-object v2, v0, v1

    sput-object v0, Landroid/os/PersonaPolicyManager;->SETTINGS_FOR_COM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPersonaPolicyManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/IPersonaPolicyManager;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    iput-object p1, p0, Landroid/os/PersonaPolicyManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getCloneToKnoxSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "outKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/os/PersonaPolicyManager;->CLONE_TO_KNOX_PROFILE:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static getComSettings()[Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Landroid/os/PersonaPolicyManager;->SETTINGS_FOR_COM:[Ljava/lang/String;

    return-object v0
.end method

.method public static getKnoxKeys(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "outKeySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/PersonaPolicyManager;->EXCLUDE_IN_COM:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public static getKnoxKeysToSecure(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "outKeySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v0, Landroid/os/PersonaPolicyManager;->SHARE_WITH_KNOX_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaPolicyManager, addLockOnImage() is not called..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get addLockOnImage , inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getAirCommandEnabled(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAirCommandEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAllowAllShare(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowAllShare(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllowContainerReset(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowContainerReset(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllowCustomBadgeIcon(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowCustomBadgeIcon(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAllowCustomColorIdentification(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowCustomColorIdentification(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAllowCustomPersonaIcon(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowCustomPersonaIcon(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAllowDLNADataTransfer(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowDLNADataTransfer(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllowExportAndDeleteFiles(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowExportAndDeleteFiles(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllowExportFiles(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowExportFiles(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllowImportFiles(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowImportFiles(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAllowPrint(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowPrint(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllowShortCutCreation(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowShortCutCreation(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAllowUniversalCallerId(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getAllowUniversalCallerId(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCameraModeChangeEnabled(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getCameraModeChangeEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDisableSwitchWidgetOnLockScreen(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getDisableSwitchWidgetOnLockScreen(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEncryptionStatus(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getEncryptionStatus(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getGearSupportEnabled(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getGearSupportEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getModifyLockScreenTimeout(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getModifyLockScreenTimeout(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getPasswordLockPolicy(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getPasswordLockPolicy(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getPenWindowEnabled(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getPenWindowEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->getRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaPolicyManager, getRCPDataPolicy() is not called..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get getRCPDataPolicy , inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "policyProperty"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPersonaPolicyManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaPolicyManager, getRCPDataPolicyForUser() is not called..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get getRCPDataPolicyForUser, inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getRCPNotificationPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->getRCPNotificationPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaPolicyManager, getRCPNotificationPolicy() is not called..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get getRCPNotificationPolicy , inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getSecureKeystoreEnabled(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getSecureKeystoreEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getSwitchNotifEnabled(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->getSwitchNotifEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getSyncPolicy(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    const-string v0, "all_contacts"

    return-object v0
.end method

.method public isBadgeRequired()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1}, Landroid/content/pm/IPersonaPolicyManager;->isBadgeRequired()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaPolicyManager, isBadgeRequired() is not called..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get isBadgeRequired , inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public isBadgeRequiredFromOwner(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->isBadgeRequiredFromOwner(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaPolicyManager, isBadgeRequiredFromOwner(packageName) is not called..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get isBadgeRequiredFromOwner(packageName) , inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public isMoveFilesToContainerAllowed(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->isMoveFilesToContainerAllowed(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isShareClipboardDataToContainerAllowed(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->isShareClipboardDataToContainerAllowed(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isShareClipboardDataToOwnerAllowed(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaPolicyManager;->isShareClipboardDataToOwnerAllowed(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona Policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerReceivers()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1}, Landroid/content/pm/IPersonaPolicyManager;->registerReceivers()V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaPolicyManager, registerReceiversis not called..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get registerReceivers, inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAirCommandEnabled(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAirCommandEnabled(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAllowAllShare(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowAllShare(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAllowContainerReset(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowContainerReset(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAllowCustomBadgeIcon(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowCustomBadgeIcon(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAllowCustomColorIdentification(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowCustomColorIdentification(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAllowCustomPersonaIcon(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowCustomPersonaIcon(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAllowDLNADataTransfer(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowDLNADataTransfer(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAllowExportAndDeleteFiles(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowExportAndDeleteFiles(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAllowExportFiles(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowExportFiles(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAllowImportFiles(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowImportFiles(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAllowPrint(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowPrint(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAllowShortCutCreation(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowShortCutCreation(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAllowUniversalCallerId(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setAllowUniversalCallerId(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCameraModeChangeEnabled(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setCameraModeChangeEnabled(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDisableSwitchWidgetOnLockScreen(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setDisableSwitchWidgetOnLockScreen(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEncryptionStatus(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setEncryptionStatus(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setGearSupportEnabled(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setGearSupportEnabled(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setModifyLockScreenTimeout(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setModifyLockScreenTimeout(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPasswordLockPolicy(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setPasswordLockPolicy(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPenWindowEnabled(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setPenWindowEnabled(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPersonaPolicyManager;->setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaPolicyManager, setRCPDataPolicy() is not called..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get setRCPDataPolicy , inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setRCPNotificationPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPersonaPolicyManager;->setRCPNotificationPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaPolicyManager, setRCPNotificationPolicy() is not called..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get setRCPNotificationPolicy , inside PersonaPolicyManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setSecureKeystoreEnabled(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setSecureKeystoreEnabled(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSwitchNotifEnabled(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaPolicyManager;->mService:Landroid/content/pm/IPersonaPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaPolicyManager;->setSwitchNotifEnabled(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call Persona Policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSyncPolicy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    return-void
.end method
