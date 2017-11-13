.class public Landroid/provider/MoodLight;
.super Ljava/lang/Object;
.source "MoodLight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MoodLight$COLOR;,
        Landroid/provider/MoodLight$ColorValues;,
        Landroid/provider/MoodLight$MoodLightRepeatValue;
    }
.end annotation


# static fields
.field public static final COLOR_PACKAGE_SEPARATOR:Ljava/lang/String; = ":"

.field public static final MOOD_LIGHT_ALL_DAY_ALERTS:Ljava/lang/String; = "ml_all_day"

.field public static final MOOD_LIGHT_ASSISTIVE_ALERT_BATTERY_STATUS:Ljava/lang/String; = "ml_aa_battery_status"

.field public static final MOOD_LIGHT_ASSISTIVE_ALERT_BATTERY_VALUE:Ljava/lang/String; = "ml_aa_battery_value"

.field public static final MOOD_LIGHT_ASSISTIVE_ALERT_DATA_USAGE_STATUS:Ljava/lang/String; = "ml_aa_du_status"

.field public static final MOOD_LIGHT_ASSISTIVE_ALERT_STATUS:Ljava/lang/String; = "ml_aa_status"

.field public static final MOOD_LIGHT_ASSISTIVE_ALERT_STORAGE_STATUS:Ljava/lang/String; = "ml_aa_storage_status"

.field public static final MOOD_LIGHT_ASSISTIVE_ALERT_STORAGE_VALUE:Ljava/lang/String; = "ml_aa_storage_value"

.field public static final MOOD_LIGHT_END_TIME:Ljava/lang/String; = "ml_end_time"

.field public static final MOOD_LIGHT_NOTIFICATIONS_BATTERY_CHARGING_STATUS:Ljava/lang/String; = "ml_battery_charging"

.field public static final MOOD_LIGHT_PACKAGE_NOT_FOUND:I = -0x1

.field public static final MOOD_LIGHT_PRIORITY_NOTIFIER_PACKAGE_LIST:Ljava/lang/String; = "ml_pn_package"

.field public static final MOOD_LIGHT_PRIORITY_NOTIFIER_STATUS:Ljava/lang/String; = "ml_pn_status"

.field public static final MOOD_LIGHT_REPEAT_VALUE:Ljava/lang/String; = "ml_repeat_value"

.field public static final MOOD_LIGHT_SELECT_NOTIFICATIONS_EMAIL:Ljava/lang/String; = "ml_email"

.field public static final MOOD_LIGHT_SELECT_NOTIFICATIONS_MESSAGE:Ljava/lang/String; = "ml_message"

.field public static final MOOD_LIGHT_SELECT_NOTIFICATIONS_MISSED_CALL:Ljava/lang/String; = "ml_missed_call"

.field public static final MOOD_LIGHT_START_TIME:Ljava/lang/String; = "ml_start_time"

.field public static final MOOD_LIGHT_STATUS:Ljava/lang/String; = "ml_status"

.field public static final MOOD_LIGHT_STORAGE_PATH_SELFIE_ASSIST_PICTURES:Ljava/lang/String; = "ml_storage_path"

.field public static final PACKAGE_SEPARATOR:Ljava/lang/String; = ";"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    return-void
.end method

.method public static getColorForIndex(Landroid/content/ContentResolver;I)I
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "colorIndex"    # I

    .prologue
    .line 374
    # getter for: Landroid/provider/MoodLight$COLOR;->CODE_BLACK:I
    invoke-static {}, Landroid/provider/MoodLight$COLOR;->access$000()I

    move-result v0

    .line 376
    .local v0, "color":I
    packed-switch p1, :pswitch_data_0

    .line 395
    :goto_0
    return v0

    .line 378
    :pswitch_0
    const-string/jumbo v1, "ml_clolor_1"

    # getter for: Landroid/provider/MoodLight$COLOR;->CODE_SKY_BLUE:I
    invoke-static {}, Landroid/provider/MoodLight$COLOR;->access$100()I

    move-result v2

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 380
    goto :goto_0

    .line 382
    :pswitch_1
    const-string/jumbo v1, "ml_clolor_2"

    # getter for: Landroid/provider/MoodLight$COLOR;->CODE_YELLOW_GREEN:I
    invoke-static {}, Landroid/provider/MoodLight$COLOR;->access$200()I

    move-result v2

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 385
    goto :goto_0

    .line 387
    :pswitch_2
    const-string/jumbo v1, "ml_clolor_3"

    # getter for: Landroid/provider/MoodLight$COLOR;->CODE_LIGHT_BLUE:I
    invoke-static {}, Landroid/provider/MoodLight$COLOR;->access$300()I

    move-result v2

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 389
    goto :goto_0

    .line 391
    :pswitch_3
    const-string/jumbo v1, "ml_clolor_4"

    # getter for: Landroid/provider/MoodLight$COLOR;->CODE_MAGENTA:I
    invoke-static {}, Landroid/provider/MoodLight$COLOR;->access$400()I

    move-result v2

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 376
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
