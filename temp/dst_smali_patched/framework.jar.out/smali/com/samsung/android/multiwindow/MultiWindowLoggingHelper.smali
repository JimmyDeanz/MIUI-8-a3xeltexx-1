.class public Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;
.super Ljava/lang/Object;
.source "MultiWindowLoggingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;
    }
.end annotation


# static fields
.field private static final APP_ID:Ljava/lang/String; = "com.samsung.android.multiwindow"

.field public static final CHANGE_POPUPWINDOW_TYPE:Ljava/lang/String; = "CHANGE-POPUP"

.field public static final CHANGE_SPLITWINDOW_TYPE:Ljava/lang/String; = "CHANGE-SPLIT"

.field public static final CLOSE_TYPE:Ljava/lang/String; = "CLOSE"

.field public static final DEBUG:Z = false

.field public static final DRAGCONTENT_TYPE:Ljava/lang/String; = "DRAGCONTENT"

.field public static final GESTURE_LOGGING_FEATURE:Ljava/lang/String; = "GEST"

.field public static final MAX_TYPE:Ljava/lang/String; = "MAXIMIZE"

.field public static final MIN_TYPE:Ljava/lang/String; = "MINIMIZE"

.field public static final POPUPWINDOW_LOGGING_FEATURE:Ljava/lang/String; = "POPW"

.field public static final RECENT_LONGPRESS_FROM_HOME_LOGGING_FEATURE:Ljava/lang/String; = "LPHM"

.field public static final RECENT_LONGPRESS_FROM_NORMAL_APP_LOGGING_FEATURE:Ljava/lang/String; = "LPNA"

.field public static final RECENT_LONGPRESS_FROM_SPLIT_LOGGING_FEATURE:Ljava/lang/String; = "LPSP"

.field public static final RECENT_LONGPRESS_LOGGING_FEATURE:Ljava/lang/String; = "RCLP"

.field public static final RECENT_POPUP_LOGGING_FEATURE:Ljava/lang/String; = "RCPO"

.field public static final RECENT_SPLIT_LOGGING_FEATURE:Ljava/lang/String; = "RCSP"

.field public static final RECENT_STACKVIEW_LOGGING_FEATURE:Ljava/lang/String; = "RCSV"

.field public static final RECENT_VIEWPAGER_LOGGING_FEATURE:Ljava/lang/String; = "RCVP"

.field public static final REMOVE_MINIMIZE_ICON_FEATURE:Ljava/lang/String; = "RMMI"

.field public static final SPLITWINDOW_LOGGING_FEATURE:Ljava/lang/String; = "SPLW"

.field public static final SPLITWINDOW_PAIR_LOGGING_FEATURE:Ljava/lang/String; = "PAIR"

.field public static final SWITCH_TYPE:Ljava/lang/String; = "SWITCH"

.field public static final TAG:Ljava/lang/String; = "MultiWindowLoggingHelper"

.field public static final TRAY_POPUP_LOGGING_FEATURE:Ljava/lang/String; = "TRPO"

.field public static final TRAY_SPLIT_LOGGING_FEATURE:Ljava/lang/String; = "TRSP"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.samsung.android.multiwindow"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const-string v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public static insertMultipleStatusLog(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;[J)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "features"    # [Ljava/lang/String;
    .param p2, "extras"    # [Ljava/lang/String;
    .param p3, "values"    # [J

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-static {v4}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_1

    aget-object v4, p1, v3

    if-nez v4, :cond_3

    :cond_1
    new-array v1, v3, [Landroid/content/ContentValues;

    .local v1, "cvs":[Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_4

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    aput-object v4, v1, v2

    aget-object v4, v1, v2

    const-string v5, "app_id"

    const-string v6, "com.samsung.android.multiwindow"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, v1, v2

    const-string v5, "feature"

    aget-object v6, p1, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, v1, v2

    const-string v5, "extra"

    aget-object v6, p2, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    aget-object v4, v1, v2

    const-string v5, "value"

    aget-wide v6, p3, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v1    # "cvs":[Landroid/content/ContentValues;
    .end local v2    # "i":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .restart local v1    # "cvs":[Landroid/content/ContentValues;
    .restart local v2    # "i":I
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v4, "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "data"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "com.samsung.android.providers.context"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method
