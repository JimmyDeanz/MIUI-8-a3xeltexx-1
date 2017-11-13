.class Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbGamepadConnectionState"
.end annotation


# static fields
.field private static final STATE_CONNECTED:I = 0x1

.field private static final STATE_DISCONNECTED:I = 0x0

.field private static final STATE_NONE:I = -0x1


# instance fields
.field private mGamepadAddress:Ljava/lang/String;

.field private mGamepadCaller:Ljava/lang/String;

.field private mGamepadEarjackState:I

.field private mGamepadName:Ljava/lang/String;

.field private mGamepadState:I

.field private mGamepadType:I

.field private mIsGamapadEarjackRouting:Z

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 1

    .prologue
    .line 9430
    iput-object p1, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9431
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadEarjackState:I

    .line 9432
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mIsGamapadEarjackRouting:Z

    .line 9433
    return-void
.end method

.method static synthetic access$14500(Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;

    .prologue
    .line 9417
    iget v0, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadEarjackState:I

    return v0
.end method

.method static synthetic access$14600(Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;

    .prologue
    .line 9417
    iget v0, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadState:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;

    .prologue
    .line 9417
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mIsGamapadEarjackRouting:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;
    .param p1, "x1"    # Z

    .prologue
    .line 9417
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mIsGamapadEarjackRouting:Z

    return p1
.end method


# virtual methods
.method public getEarjactState()I
    .locals 3

    .prologue
    .line 9498
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_0

    .line 9499
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[gamepad] getEarjactState() mGamepadEarjackState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadEarjackState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9501
    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadEarjackState:I

    return v0
.end method

.method public setEarjackState(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    .line 9466
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_0

    .line 9467
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[gamepad] setEarjackState() state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mGamepadState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9469
    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadEarjackState:I

    if-ne p1, v0, :cond_2

    .line 9496
    :cond_1
    :goto_0
    return-void

    .line 9473
    :cond_2
    iput p1, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadEarjackState:I

    .line 9474
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 9477
    iget v0, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadState:I

    if-ne v0, v3, :cond_3

    .line 9478
    iput-boolean v3, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mIsGamapadEarjackRouting:Z

    .line 9479
    iget-object v0, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadType:I

    iget v2, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadEarjackState:I

    iget-object v3, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadCaller:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9480
    :cond_3
    iget v0, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadState:I

    if-nez v0, :cond_1

    .line 9487
    iget-object v0, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->getCurOutDevice()I
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5500(Lcom/android/server/audio/AudioService;)I

    move-result v6

    .line 9488
    .local v6, "curDevice":I
    const/16 v0, 0x4000

    if-ne v6, v0, :cond_1

    .line 9489
    iput v3, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadState:I

    .line 9490
    iget v0, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadEarjackState:I

    if-nez v0, :cond_1

    .line 9491
    iput-boolean v3, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mIsGamapadEarjackRouting:Z

    .line 9492
    iget-object v0, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadType:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadCaller:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setGamepadState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 9436
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v1, :cond_0

    .line 9437
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[gamepad] setGamepadState() GamepadState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mGamepadEarjackState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadEarjackState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9439
    :cond_0
    iput p1, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadType:I

    .line 9440
    iput p2, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadState:I

    .line 9441
    iput-object p3, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadAddress:Ljava/lang/String;

    .line 9442
    iput-object p4, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadName:Ljava/lang/String;

    .line 9443
    iput-object p5, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadCaller:Ljava/lang/String;

    .line 9444
    const/4 v0, 0x1

    .line 9446
    .local v0, "usbRouting":Z
    iget v1, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadEarjackState:I

    if-ne v1, v4, :cond_1

    .line 9448
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadState:I

    .line 9449
    const/4 v1, 0x1

    .line 9462
    :goto_0
    return v1

    .line 9451
    :cond_1
    iget v1, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadEarjackState:I

    if-nez v1, :cond_3

    .line 9452
    const/4 v0, 0x0

    .line 9458
    :goto_1
    iget v1, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadState:I

    if-ne v1, v4, :cond_2

    .line 9459
    iput v4, p0, Lcom/android/server/audio/AudioService$UsbGamepadConnectionState;->mGamepadEarjackState:I

    :cond_2
    move v1, v0

    .line 9462
    goto :goto_0

    .line 9455
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method
