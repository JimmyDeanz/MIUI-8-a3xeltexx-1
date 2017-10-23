.class public Lcom/android/server/am/MARsDBManager$SMDBValue;
.super Ljava/lang/Object;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SMDBValue"
.end annotation


# instance fields
.field public strAutoRun:Ljava/lang/String;

.field public strExtras:Ljava/lang/String;

.field public strIsSMFreezed:Ljava/lang/String;

.field public strPkgName:Ljava/lang/String;

.field public strPkgType:Ljava/lang/String;

.field public strResetTime:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/MARsDBManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsDBManager;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;)V
    .locals 0
    .param p2, "_strPkgName"    # Ljava/lang/String;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p2, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "_strPkgName"    # Ljava/lang/String;
    .param p3, "_strResetTime"    # Ljava/lang/String;
    .param p4, "_strExtras"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p2, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    .line 234
    iput-object p3, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strResetTime:Ljava/lang/String;

    .line 235
    iput-object p4, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strExtras:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "_strPkgName"    # Ljava/lang/String;
    .param p3, "_strResetTime"    # Ljava/lang/String;
    .param p4, "_strExtras"    # Ljava/lang/String;
    .param p5, "_strAutoRun"    # Ljava/lang/String;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p2, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    .line 240
    iput-object p3, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strResetTime:Ljava/lang/String;

    .line 241
    iput-object p4, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strExtras:Ljava/lang/String;

    .line 242
    iput-object p5, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "_strPkgName"    # Ljava/lang/String;
    .param p3, "_strIsSMFreezed"    # Ljava/lang/String;
    .param p4, "_strResetTime"    # Ljava/lang/String;
    .param p5, "_strExtras"    # Ljava/lang/String;
    .param p6, "_strPkgType"    # Ljava/lang/String;
    .param p7, "_strAutoRun"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p2, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    .line 247
    iput-object p3, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strIsSMFreezed:Ljava/lang/String;

    .line 248
    iput-object p4, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strResetTime:Ljava/lang/String;

    .line 249
    iput-object p5, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strExtras:Ljava/lang/String;

    .line 250
    iput-object p6, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    .line 251
    iput-object p7, p0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    .line 252
    return-void
.end method
