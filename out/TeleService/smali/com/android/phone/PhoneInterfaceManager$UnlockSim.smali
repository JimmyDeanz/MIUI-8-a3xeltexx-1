.class Lcom/android/phone/PhoneInterfaceManager$UnlockSim;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnlockSim"
.end annotation


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mResult:I

.field private mRetryCount:I

.field private final mSimCard:Lcom/android/internal/telephony/IccCard;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccCard;)V
    .locals 1
    .param p1, "simCard"    # Lcom/android/internal/telephony/IccCard;

    .prologue
    .line 1149
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->mDone:Z

    .line 1140
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->mResult:I

    .line 1141
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->mRetryCount:I

    .line 1150
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->mSimCard:Lcom/android/internal/telephony/IccCard;

    .line 1151
    return-void
.end method

.method static synthetic access$702(Lcom/android/phone/PhoneInterfaceManager$UnlockSim;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneInterfaceManager$UnlockSim;
    .param p1, "x1"    # I

    .prologue
    .line 1135
    iput p1, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->mRetryCount:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/phone/PhoneInterfaceManager$UnlockSim;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneInterfaceManager$UnlockSim;
    .param p1, "x1"    # I

    .prologue
    .line 1135
    iput p1, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->mResult:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/phone/PhoneInterfaceManager$UnlockSim;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneInterfaceManager$UnlockSim;
    .param p1, "x1"    # Z

    .prologue
    .line 1135
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->mDone:Z

    return p1
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1155
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1156
    monitor-enter p0

    .line 1157
    :try_start_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim$1;-><init>(Lcom/android/phone/PhoneInterfaceManager$UnlockSim;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->mHandler:Landroid/os/Handler;

    .line 1184
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1185
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1186
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1187
    return-void

    .line 1185
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized unlockSim(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 5
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 1198
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 1200
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1201
    :catch_0
    move-exception v1

    .line 1202
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1198
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1205
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1207
    .local v0, "callback":Landroid/os/Message;
    if-nez p1, :cond_1

    .line 1208
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->mSimCard:Lcom/android/internal/telephony/IccCard;

    invoke-interface {v3, p2, v0}, Lcom/android/internal/telephony/IccCard;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 1213
    :goto_1
    iget-boolean v3, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_2

    .line 1215
    :try_start_4
    const-string v3, "PhoneInterfaceManager"

    const-string v4, "wait for done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1217
    :catch_1
    move-exception v1

    .line 1219
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 1210
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->mSimCard:Lcom/android/internal/telephony/IccCard;

    invoke-interface {v3, p1, p2, v0}, Lcom/android/internal/telephony/IccCard;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 1222
    :cond_2
    const-string v3, "PhoneInterfaceManager"

    const-string v4, "done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 1224
    .local v2, "resultArray":[I
    const/4 v3, 0x0

    iget v4, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->mResult:I

    aput v4, v2, v3

    .line 1225
    const/4 v3, 0x1

    iget v4, p0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->mRetryCount:I

    aput v4, v2, v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1226
    monitor-exit p0

    return-object v2
.end method
