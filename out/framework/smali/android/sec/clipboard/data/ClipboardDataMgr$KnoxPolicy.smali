.class Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;
.super Ljava/lang/Object;
.source "ClipboardDataMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/data/ClipboardDataMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KnoxPolicy"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sec/clipboard/data/ClipboardDataMgr;


# direct methods
.method private constructor <init>(Landroid/sec/clipboard/data/ClipboardDataMgr;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->this$0:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/sec/clipboard/data/ClipboardDataMgr;Landroid/sec/clipboard/data/ClipboardDataMgr$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/sec/clipboard/data/ClipboardDataMgr;
    .param p2, "x1"    # Landroid/sec/clipboard/data/ClipboardDataMgr$1;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;-><init>(Landroid/sec/clipboard/data/ClipboardDataMgr;)V

    return-void
.end method


# virtual methods
.method public isAllowedSharingKnoxDataToPersonal(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->this$0:Landroid/sec/clipboard/data/ClipboardDataMgr;

    # invokes: Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaManager()Z
    invoke-static {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->access$000(Landroid/sec/clipboard/data/ClipboardDataMgr;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->this$0:Landroid/sec/clipboard/data/ClipboardDataMgr;

    # getter for: Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaPolicyManager:Landroid/os/PersonaPolicyManager;
    invoke-static {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->access$100(Landroid/sec/clipboard/data/ClipboardDataMgr;)Landroid/os/PersonaPolicyManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 128
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->this$0:Landroid/sec/clipboard/data/ClipboardDataMgr;

    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->this$0:Landroid/sec/clipboard/data/ClipboardDataMgr;

    # getter for: Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Landroid/os/PersonaManager;
    invoke-static {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->access$200(Landroid/sec/clipboard/data/ClipboardDataMgr;)Landroid/os/PersonaManager;

    move-result-object v1

    const-string/jumbo v3, "persona_policy"

    invoke-virtual {v1, v3}, Landroid/os/PersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaPolicyManager;

    # setter for: Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaPolicyManager:Landroid/os/PersonaPolicyManager;
    invoke-static {v2, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->access$102(Landroid/sec/clipboard/data/ClipboardDataMgr;Landroid/os/PersonaPolicyManager;)Landroid/os/PersonaPolicyManager;

    .line 131
    :cond_0
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->this$0:Landroid/sec/clipboard/data/ClipboardDataMgr;

    # getter for: Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaPolicyManager:Landroid/os/PersonaPolicyManager;
    invoke-static {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->access$100(Landroid/sec/clipboard/data/ClipboardDataMgr;)Landroid/os/PersonaPolicyManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->this$0:Landroid/sec/clipboard/data/ClipboardDataMgr;

    # getter for: Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaPolicyManager:Landroid/os/PersonaPolicyManager;
    invoke-static {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->access$100(Landroid/sec/clipboard/data/ClipboardDataMgr;)Landroid/os/PersonaPolicyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/PersonaPolicyManager;->isShareClipboardDataToOwnerAllowed(I)Z

    move-result v1

    .line 140
    :goto_0
    return v1

    .line 134
    :cond_1
    const-string v1, "ClipboardDataMgr"

    const-string/jumbo v2, "mPersonaPolicyManager is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_2
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public isAllowedSharingPersonalDataToKnox(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 145
    :try_start_0
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->this$0:Landroid/sec/clipboard/data/ClipboardDataMgr;

    # invokes: Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaManager()Z
    invoke-static {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->access$000(Landroid/sec/clipboard/data/ClipboardDataMgr;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->this$0:Landroid/sec/clipboard/data/ClipboardDataMgr;

    # getter for: Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaPolicyManager:Landroid/os/PersonaPolicyManager;
    invoke-static {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->access$100(Landroid/sec/clipboard/data/ClipboardDataMgr;)Landroid/os/PersonaPolicyManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 147
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->this$0:Landroid/sec/clipboard/data/ClipboardDataMgr;

    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->this$0:Landroid/sec/clipboard/data/ClipboardDataMgr;

    # getter for: Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Landroid/os/PersonaManager;
    invoke-static {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->access$200(Landroid/sec/clipboard/data/ClipboardDataMgr;)Landroid/os/PersonaManager;

    move-result-object v1

    const-string/jumbo v3, "persona_policy"

    invoke-virtual {v1, v3}, Landroid/os/PersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaPolicyManager;

    # setter for: Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaPolicyManager:Landroid/os/PersonaPolicyManager;
    invoke-static {v2, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->access$102(Landroid/sec/clipboard/data/ClipboardDataMgr;Landroid/os/PersonaPolicyManager;)Landroid/os/PersonaPolicyManager;

    .line 150
    :cond_0
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->this$0:Landroid/sec/clipboard/data/ClipboardDataMgr;

    # getter for: Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaPolicyManager:Landroid/os/PersonaPolicyManager;
    invoke-static {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->access$100(Landroid/sec/clipboard/data/ClipboardDataMgr;)Landroid/os/PersonaPolicyManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->this$0:Landroid/sec/clipboard/data/ClipboardDataMgr;

    # getter for: Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaPolicyManager:Landroid/os/PersonaPolicyManager;
    invoke-static {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->access$100(Landroid/sec/clipboard/data/ClipboardDataMgr;)Landroid/os/PersonaPolicyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/PersonaPolicyManager;->isShareClipboardDataToContainerAllowed(I)Z

    move-result v1

    .line 159
    :goto_0
    return v1

    .line 153
    :cond_1
    const-string v1, "ClipboardDataMgr"

    const-string/jumbo v2, "mPersonaPolicyManager is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_2
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
