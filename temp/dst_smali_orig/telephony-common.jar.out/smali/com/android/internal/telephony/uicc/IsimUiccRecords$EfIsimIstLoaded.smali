.class Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;
.super Ljava/lang/Object;
.source "IsimUiccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IsimUiccRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfIsimIstLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/IsimUiccRecords$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "EF_ISIM_IST"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .local v0, "data":[B
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    aget-byte v1, v1, v3

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    # setter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsPcscfSupported:Z
    invoke-static {v4, v1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$1102(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Z)Z

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    aget-byte v1, v1, v3

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    # setter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsGbaSupported:Z
    invoke-static {v4, v1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$1202(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Z)Z

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_2

    :goto_2
    # setter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsSmoveripSupported:Z
    invoke-static {v4, v2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$1302(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Z)Z

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimIst:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$1402(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Ljava/lang/String;)Ljava/lang/String;

    sget-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    const-string v2, "EF_IST=**"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    const-string v2, "mIsPcscfSupported=**"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    const-string v2, "mIsGbaSupported=**"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    const-string v2, "mIsSmoveripSupported=**"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EF_IST="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    # getter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimIst:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$1400(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsPcscfSupported="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    # getter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsPcscfSupported:Z
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$1100(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsGbaSupported="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    # getter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsGbaSupported:Z
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$1200(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsSmoveripSupported="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    # getter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsSmoveripSupported:Z
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$1300(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    goto :goto_3
.end method
