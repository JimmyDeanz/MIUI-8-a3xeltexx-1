.class public final Landroid/media/RemoteDisplay;
.super Ljava/lang/Object;
.source "RemoteDisplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteDisplay$Listener;
    }
.end annotation


# static fields
.field public static final DISPLAY_ERROR_CONNECTION_DROPPED:I = 0x2

.field public static final DISPLAY_ERROR_UNKOWN:I = 0x1

.field public static final DISPLAY_FLAG_SECURE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RemoteDisplay_Java"

.field private static mRemoteDisplayCallback:Landroid/media/RemoteDisplayCallback;


# instance fields
.field private final mGuard:Ldalvik/system/CloseGuard;

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/media/RemoteDisplay$Listener;

.field private final mOpPackageName:Ljava/lang/String;

.field private mPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    sput-object v0, Landroid/media/RemoteDisplay;->mRemoteDisplayCallback:Landroid/media/RemoteDisplayCallback;

    return-void
.end method

.method private constructor <init>(Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/RemoteDisplay$Listener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    .line 71
    iput-object p1, p0, Landroid/media/RemoteDisplay;->mListener:Landroid/media/RemoteDisplay$Listener;

    .line 72
    iput-object p2, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    .line 73
    iput-object p3, p0, Landroid/media/RemoteDisplay;->mOpPackageName:Ljava/lang/String;

    .line 74
    sget-object v0, Landroid/media/RemoteDisplay;->mRemoteDisplayCallback:Landroid/media/RemoteDisplayCallback;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Landroid/media/RemoteDisplayCallback;

    invoke-direct {v0}, Landroid/media/RemoteDisplayCallback;-><init>()V

    sput-object v0, Landroid/media/RemoteDisplay;->mRemoteDisplayCallback:Landroid/media/RemoteDisplayCallback;

    .line 77
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/media/RemoteDisplay;)Landroid/media/RemoteDisplay$Listener;
    .locals 1
    .param p0, "x0"    # Landroid/media/RemoteDisplay;

    .prologue
    .line 36
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mListener:Landroid/media/RemoteDisplay$Listener;

    return-object v0
.end method

.method static synthetic access$100()Landroid/media/RemoteDisplayCallback;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Landroid/media/RemoteDisplay;->mRemoteDisplayCallback:Landroid/media/RemoteDisplayCallback;

    return-object v0
.end method

.method private cbFromNativeWFD(ILjava/lang/String;)V
    .locals 2
    .param p1, "msg"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 221
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/RemoteDisplay$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/RemoteDisplay$4;-><init>(Landroid/media/RemoteDisplay;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 227
    return-void
.end method

.method private dispose(Z)V
    .locals 4
    .param p1, "finalized"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 154
    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 156
    if-eqz p1, :cond_2

    .line 157
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 163
    :cond_0
    :goto_0
    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    invoke-direct {p0, v0, v1}, Landroid/media/RemoteDisplay;->nativeDispose(J)V

    .line 164
    iput-wide v2, p0, Landroid/media/RemoteDisplay;->mPtr:J

    .line 166
    :cond_1
    return-void

    .line 159
    :cond_2
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    goto :goto_0
.end method

.method public static listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;)Landroid/media/RemoteDisplay;
    .locals 3
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "listener"    # Landroid/media/RemoteDisplay$Listener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 97
    if-nez p0, :cond_0

    .line 98
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "iface must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_0
    if-nez p1, :cond_1

    .line 101
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "listener must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_1
    if-nez p2, :cond_2

    .line 104
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "handler must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_2
    new-instance v0, Landroid/media/RemoteDisplay;

    invoke-direct {v0, p1, p2, p3}, Landroid/media/RemoteDisplay;-><init>(Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;)V

    .line 108
    .local v0, "display":Landroid/media/RemoteDisplay;
    invoke-direct {v0, p0}, Landroid/media/RemoteDisplay;->startListening(Ljava/lang/String;)V

    .line 109
    return-object v0
.end method

.method public static listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)Landroid/media/RemoteDisplay;
    .locals 3
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "listener"    # Landroid/media/RemoteDisplay$Listener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "opPackageName"    # Ljava/lang/String;
    .param p4, "setparamInfo"    # Ljava/lang/String;

    .prologue
    .line 122
    if-nez p0, :cond_0

    .line 123
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "iface must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_0
    if-nez p1, :cond_1

    .line 126
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "listener must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_1
    if-nez p2, :cond_2

    .line 129
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "handler must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_2
    new-instance v0, Landroid/media/RemoteDisplay;

    invoke-direct {v0, p1, p2, p3}, Landroid/media/RemoteDisplay;-><init>(Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;)V

    .line 133
    .local v0, "display":Landroid/media/RemoteDisplay;
    invoke-direct {v0, p0, p4}, Landroid/media/RemoteDisplay;->startListening(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-object v0
.end method

.method private native nativeDispose(J)V
.end method

.method private native nativeListen(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private native nativeListen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private native nativePause(J)V
.end method

.method private native nativeResume(J)V
.end method

.method private static native nativeSetParam(Ljava/lang/String;)I
.end method

.method public static native nativeStartUIBC(Ljava/lang/Object;)V
.end method

.method public static native nativeStopUIBC()V
.end method

.method private notifyDisplayConnected(Landroid/view/Surface;IIII)V
    .locals 8
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "flags"    # I
    .param p5, "session"    # I

    .prologue
    .line 191
    iget-object v7, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/media/RemoteDisplay$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/media/RemoteDisplay$1;-><init>(Landroid/media/RemoteDisplay;Landroid/view/Surface;IIII)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    return-void
.end method

.method private notifyDisplayDisconnected()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/RemoteDisplay$2;

    invoke-direct {v1, p0}, Landroid/media/RemoteDisplay$2;-><init>(Landroid/media/RemoteDisplay;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    return-void
.end method

.method private notifyDisplayError(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 211
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/RemoteDisplay$3;

    invoke-direct {v1, p0, p1}, Landroid/media/RemoteDisplay$3;-><init>(Landroid/media/RemoteDisplay;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 217
    return-void
.end method

.method public static setParam(ILjava/lang/String;)I
    .locals 4
    .param p0, "type"    # I
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-static {p1}, Landroid/media/RemoteDisplay;->nativeSetParam(Ljava/lang/String;)I

    move-result v0

    .line 233
    .local v0, "iRet":I
    const-string v1, "RemoteDisplay_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setParam >> ret is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return v0
.end method

.method private startListening(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mOpPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Landroid/media/RemoteDisplay;->nativeListen(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    .line 170
    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not start listening for remote display connection on \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    const-string v1, "dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method private startListening(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "initParam"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mOpPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Landroid/media/RemoteDisplay;->nativeListen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    .line 180
    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not start listening for remote display connection on \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    const-string v1, "dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 185
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/RemoteDisplay;->dispose(Z)V

    .line 143
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/media/RemoteDisplay;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 86
    return-void

    .line 84
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public isDongleRenameAvailable()Z
    .locals 1

    .prologue
    .line 238
    sget-object v0, Landroid/media/RemoteDisplay;->mRemoteDisplayCallback:Landroid/media/RemoteDisplayCallback;

    invoke-virtual {v0}, Landroid/media/RemoteDisplayCallback;->isDongleRenameAvailable()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    invoke-direct {p0, v0, v1}, Landroid/media/RemoteDisplay;->nativePause(J)V

    .line 147
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    invoke-direct {p0, v0, v1}, Landroid/media/RemoteDisplay;->nativeResume(J)V

    .line 151
    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 242
    sget-object v0, Landroid/media/RemoteDisplay;->mRemoteDisplayCallback:Landroid/media/RemoteDisplayCallback;

    invoke-virtual {v0, p1}, Landroid/media/RemoteDisplayCallback;->setDeviceName(Ljava/lang/String;)Z

    .line 243
    return-void
.end method
