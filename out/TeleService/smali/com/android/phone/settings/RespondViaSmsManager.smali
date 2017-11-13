.class public Lcom/android/phone/settings/RespondViaSmsManager;
.super Ljava/lang/Object;
.source "RespondViaSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/RespondViaSmsManager$Settings;
    }
.end annotation


# static fields
.field private static final DBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/settings/RespondViaSmsManager;->DBG:Z

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/phone/settings/RespondViaSmsManager;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p0}, Lcom/android/phone/settings/RespondViaSmsManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 187
    const-string v0, "RespondViaSmsManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method
