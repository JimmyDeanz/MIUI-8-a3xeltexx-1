.class Lcom/android/server/pm/PackageManagerService$DumpState;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DumpState"
.end annotation


# static fields
.field public static final DUMP_DOMAIN_PREFERRED:I = 0x8000

.field public static final DUMP_FEATURES:I = 0x2

.field public static final DUMP_INSTALLS:I = 0x2000

.field public static final DUMP_INTENT_FILTER_VERIFIERS:I = 0x4000

.field public static final DUMP_KEYSETS:I = 0x800

.field public static final DUMP_LIBS:I = 0x1

.field public static final DUMP_MESSAGES:I = 0x40

.field public static final DUMP_PACKAGES:I = 0x10

.field public static final DUMP_PERMISSIONS:I = 0x8

.field public static final DUMP_PREFERRED:I = 0x200

.field public static final DUMP_PREFERRED_XML:I = 0x400

.field public static final DUMP_PROVIDERS:I = 0x80

.field public static final DUMP_RESOLVERS:I = 0x4

.field public static final DUMP_SHARED_USERS:I = 0x20

.field public static final DUMP_VERIFIERS:I = 0x100

.field public static final DUMP_VERSION:I = 0x1000

.field public static final OPTION_SHOW_FILTERS:I = 0x1


# instance fields
.field private mOptions:I

.field private mSharedUser:Lcom/android/server/pm/SharedUserSetting;

.field private mTitlePrinted:Z

.field private mTypes:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSharedUser()Lcom/android/server/pm/SharedUserSetting;
    .locals 1

    .prologue
    .line 14998
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mSharedUser:Lcom/android/server/pm/SharedUserSetting;

    return-object v0
.end method

.method public getTitlePrinted()Z
    .locals 1

    .prologue
    .line 14990
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mTitlePrinted:Z

    return v0
.end method

.method public isDumping(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 14964
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mTypes:I

    if-nez v1, :cond_1

    const/16 v1, 0x400

    if-eq p1, v1, :cond_1

    .line 14968
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mTypes:I

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOptionEnabled(I)Z
    .locals 1
    .param p1, "option"    # I

    .prologue
    .line 14976
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mOptions:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTitlePrinted()Z
    .locals 2

    .prologue
    .line 14984
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mTitlePrinted:Z

    .line 14985
    .local v0, "printed":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mTitlePrinted:Z

    .line 14986
    return v0
.end method

.method public setDump(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 14972
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mTypes:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mTypes:I

    .line 14973
    return-void
.end method

.method public setOptionEnabled(I)V
    .locals 1
    .param p1, "option"    # I

    .prologue
    .line 14980
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mOptions:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mOptions:I

    .line 14981
    return-void
.end method

.method public setSharedUser(Lcom/android/server/pm/SharedUserSetting;)V
    .locals 0
    .param p1, "user"    # Lcom/android/server/pm/SharedUserSetting;

    .prologue
    .line 15002
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mSharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 15003
    return-void
.end method

.method public setTitlePrinted(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 14994
    iput-boolean p1, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mTitlePrinted:Z

    .line 14995
    return-void
.end method
