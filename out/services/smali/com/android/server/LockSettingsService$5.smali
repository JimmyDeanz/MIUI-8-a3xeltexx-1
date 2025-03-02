.class Lcom/android/server/LockSettingsService$5;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Lcom/android/server/LockSettingsService$IKeystoreUtil;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsService;)V
    .locals 0

    .prologue
    .line 1833
    iput-object p1, p0, Lcom/android/server/LockSettingsService$5;->this$0:Lcom/android/server/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doHardHashAdjustment(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/android/server/LockSettingsService$5;->this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;
    invoke-static {v0}, Lcom/android/server/LockSettingsService;->access$1300(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsService$KeystoreUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->adjustPasswordHash(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public doHardHashMigration(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1838
    iget-object v0, p0, Lcom/android/server/LockSettingsService$5;->this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;
    invoke-static {v0}, Lcom/android/server/LockSettingsService;->access$1300(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsService$KeystoreUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->migratePasswordHash(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public doHardKeyAdjustment(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1841
    iget-object v0, p0, Lcom/android/server/LockSettingsService$5;->this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;
    invoke-static {v0}, Lcom/android/server/LockSettingsService;->access$1300(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsService$KeystoreUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->adjustPassword(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public doHardKeyMigration(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1835
    iget-object v0, p0, Lcom/android/server/LockSettingsService$5;->this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;
    invoke-static {v0}, Lcom/android/server/LockSettingsService;->access$1300(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsService$KeystoreUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->migratePassword(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getLockType()I
    .locals 1

    .prologue
    .line 1847
    const/4 v0, 0x2

    return v0
.end method
