.class Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
.super Ljava/lang/Object;
.source "EnterpriseIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/EnterpriseIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthenticationInfoManager"
.end annotation


# instance fields
.field containerID:I

.field isMigrationNeeded:Z

.field isSSOConfigurationEnabled:Z

.field originUserID:I

.field packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "originUserID"    # I

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "EnterpriseIdentity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In AuthenticationInfoManager: package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " originUser:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->containerID:I

    .line 180
    iput-object p1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->packageName:Ljava/lang/String;

    .line 181
    iput p2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->originUserID:I

    .line 182
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZ)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "originUserID"    # I
    .param p3, "isMigrationNeeded"    # Z
    .param p4, "isSSOConfigurationEnabled"    # Z

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 187
    const-string v0, "EnterpriseIdentity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In AuthenticationInfoManager: package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " originUser:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " migration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->containerID:I

    .line 191
    iput-object p1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->packageName:Ljava/lang/String;

    .line 192
    iput p2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->originUserID:I

    .line 193
    iput-boolean p3, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->isMigrationNeeded:Z

    .line 194
    iput-boolean p4, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->isSSOConfigurationEnabled:Z

    .line 195
    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    .param p1, "x1"    # Z

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->setMigrationStatus(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    .param p1, "x1"    # Z

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->setSSOConfigurationEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    .param p1, "x1"    # I

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->updateContainerID(I)V

    return-void
.end method

.method private setMigrationStatus(Z)V
    .locals 0
    .param p1, "isMigrationNeeded"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->isMigrationNeeded:Z

    .line 210
    return-void
.end method

.method private setSSOConfigurationEnabled(Z)V
    .locals 0
    .param p1, "isSSOEnabled"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->isSSOConfigurationEnabled:Z

    .line 207
    return-void
.end method

.method private updateContainerID(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 198
    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    .line 199
    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 200
    const-string v0, "EnterpriseIdentity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In updateContainerID: Updating container ID as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    iput p1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->containerID:I

    .line 203
    :cond_1
    return-void
.end method
