.class public Lcom/android/internal/logging/MetricsLogger;
.super Ljava/lang/Object;
.source "MetricsLogger.java"

# interfaces
.implements Lcom/android/internal/logging/MetricsConstants;


# static fields
.field public static final ACCESSIBILITY_ASSISTANT_MENU:I = 0x138

.field public static final ACCESSIBILITY_COLOR_ADJUSTMENT:I = 0x139

.field public static final ACCESSIBILITY_DIRECT_ACCESS:I = 0x132

.field public static final ACCESSIBILITY_HEARING:I = 0x12c

.field public static final ACCESSIBILITY_MOBILITY:I = 0x12d

.field public static final ACCESSIBILITY_NOTIFICATION_REMINDER:I = 0x133

.field public static final ACCESSIBILITY_SHARED_ACCESSIBILITY:I = 0x134

.field public static final ACCESSIBILITY_SOUND_DETECTOR:I = 0x137

.field public static final ACCESSIBILITY_TAB_AND_HOLD:I = 0x135

.field public static final ACCESSIBILITY_TOGGLE_ACCESS_CONTROL:I = 0x12f

.field public static final ACCESSIBILITY_TOGGLE_AIR_WAKEUP:I = 0x130

.field public static final ACCESSIBILITY_TOGGLE_MAGNIFIER:I = 0x131

.field public static final ACCESSIBILITY_UNIVERSAL_LOCK:I = 0x136

.field public static final ACCESSIBILITY_VISION:I = 0x12e

.field public static final ACTION_ASSIST_LONG_PRESS:I = 0xef

.field public static final ACTION_DOUBLE_TAP_POWER_CAMERA_GESTURE:I = 0xff

.field public static final ACTION_FINGERPRINT_AUTH:I = 0xfc

.field public static final ACTION_FINGERPRINT_DELETE:I = 0xfd

.field public static final ACTION_FINGERPRINT_ENROLL:I = 0xfb

.field public static final ACTION_FINGERPRINT_RENAME:I = 0xfe

.field public static final ACTION_IRIS_AUTH:I = 0x110

.field public static final ACTION_IRIS_DELETE:I = 0x111

.field public static final ACTION_IRIS_ENROLL:I = 0x10f

.field public static final ACTION_IRIS_RENAME:I = 0x112

.field public static final ACTION_WIGGLE_CAMERA_GESTURE:I = 0x100

.field public static final FINGERPRINT_ENROLLING:I = 0xf0

.field public static final FINGERPRINT_ENROLLING_SETUP:I = 0xf6

.field public static final FINGERPRINT_ENROLL_FINISH:I = 0xf2

.field public static final FINGERPRINT_ENROLL_FINISH_SETUP:I = 0xf8

.field public static final FINGERPRINT_ENROLL_INTRO:I = 0xf3

.field public static final FINGERPRINT_ENROLL_INTRO_SETUP:I = 0xf9

.field public static final FINGERPRINT_ENROLL_ONBOARD:I = 0xf4

.field public static final FINGERPRINT_ENROLL_ONBOARD_SETUP:I = 0xfa

.field public static final FINGERPRINT_ENROLL_SIDECAR:I = 0xf5

.field public static final FINGERPRINT_FIND_SENSOR:I = 0xf1

.field public static final FINGERPRINT_FIND_SENSOR_SETUP:I = 0xf7

.field public static final IRIS_ENROLLING:I = 0x104

.field public static final IRIS_ENROLLING_SETUP:I = 0x10a

.field public static final IRIS_ENROLL_FINISH:I = 0x106

.field public static final IRIS_ENROLL_FINISH_SETUP:I = 0x10c

.field public static final IRIS_ENROLL_INTRO:I = 0x107

.field public static final IRIS_ENROLL_INTRO_SETUP:I = 0x10d

.field public static final IRIS_ENROLL_ONBOARD:I = 0x108

.field public static final IRIS_ENROLL_ONBOARD_SETUP:I = 0x10e

.field public static final IRIS_ENROLL_SIDECAR:I = 0x109

.field public static final IRIS_FIND_SENSOR:I = 0x105

.field public static final IRIS_FIND_SENSOR_SETUP:I = 0x10b

.field public static final QS_ALWAYSONDISPLAY:I = 0x1a3

.field public static final QS_APN:I = 0x196

.field public static final QS_BIKEMODE:I = 0x1a5

.field public static final QS_BLUELIGHT:I = 0x1a2

.field public static final QS_DEFAULTDATA:I = 0x197

.field public static final QS_EBOOK:I = 0x198

.field public static final QS_MOBILEDATA:I = 0x199

.field public static final QS_NFC:I = 0x19a

.field public static final QS_POWERSAVING:I = 0x19c

.field public static final QS_PRIVATEMODE:I = 0x19b

.field public static final QS_QUICKCONNECT:I = 0x190

.field public static final QS_SCREENMIRRORING:I = 0x195

.field public static final QS_SFINDER:I = 0x191

.field public static final QS_SILENTMODE:I = 0x192

.field public static final QS_SMARTSTAY:I = 0x193

.field public static final QS_SYNC:I = 0x194

.field public static final QS_TOUCHSENSITIVITY:I = 0x19d

.field public static final QS_ULTRADATASAVING:I = 0x1a4

.field public static final QS_ULTRAPOWERSAVING:I = 0x19e

.field public static final QS_VOLTE:I = 0x19f

.field public static final QS_VOWIFI:I = 0x1a1

.field public static final QS_WIFICALLING:I = 0x1a0

.field public static final SETTINGS_AUTO_LOCK:I = 0x1fc

.field public static final SETTINGS_CPA:I = 0x1f4

.field public static final SETTINGS_DATA_SLOT:I = 0x1f5

.field public static final SETTINGS_DISPLAY_SCALING:I = 0x1ff

.field public static final SETTINGS_FONT_PREVIEW:I = 0x200

.field public static final SETTINGS_GLOBAL_ROAMING:I = 0x1f6

.field public static final SETTINGS_ICON_BACKGROUND:I = 0x1fe

.field public static final SETTINGS_LGT_CUSTOMER:I = 0x1f7

.field public static final SETTINGS_LGT_ENV:I = 0x1f8

.field public static final SETTINGS_LTE_MODE:I = 0x1f9

.field public static final SETTINGS_LTE_ROAMING:I = 0x1fa

.field public static final SETTINGS_ROAMING:I = 0x1fb

.field public static final SETTINGS_SCREEN_MODE:I = 0x1fd


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static action(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I

    .prologue
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static action(Landroid/content/Context;II)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "value"    # I

    .prologue
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static action(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must define metric category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1, p2}, Lcom/android/internal/logging/EventLogTags;->writeSysuiAction(ILjava/lang/String;)V

    return-void
.end method

.method public static action(Landroid/content/Context;IZ)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "value"    # Z

    .prologue
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static count(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    invoke-static {p1, p2}, Lcom/android/internal/logging/EventLogTags;->writeSysuiCount(Ljava/lang/String;I)V

    return-void
.end method

.method public static hidden(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must define metric category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/logging/EventLogTags;->writeSysuiViewVisibility(II)V

    return-void
.end method

.method public static histogram(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bucket"    # I

    .prologue
    invoke-static {p1, p2}, Lcom/android/internal/logging/EventLogTags;->writeSysuiHistogram(Ljava/lang/String;I)V

    return-void
.end method

.method public static visibility(Landroid/content/Context;II)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "vis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static visibility(Landroid/content/Context;IZ)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "visibile"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static visible(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must define metric category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x64

    invoke-static {p1, v0}, Lcom/android/internal/logging/EventLogTags;->writeSysuiViewVisibility(II)V

    return-void
.end method
