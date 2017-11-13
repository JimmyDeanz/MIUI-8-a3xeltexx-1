.class Landroid/location/IExerciseLocationListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IExerciseLocationListener.java"

# interfaces
.implements Landroid/location/IExerciseLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IExerciseLocationListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/location/IExerciseLocationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/location/IExerciseLocationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "android.location.IExerciseLocationListener"

    return-object v0
.end method

.method public onLocationChanged([J[D[D[F[F[F[D[D[JI)V
    .locals 5
    .param p1, "timestamp"    # [J
    .param p2, "latitude"    # [D
    .param p3, "longtitude"    # [D
    .param p4, "altitude"    # [F
    .param p5, "pressure"    # [F
    .param p6, "speed"    # [F
    .param p7, "pedoDistance"    # [D
    .param p8, "pedoSpeed"    # [D
    .param p9, "pedoStepCount"    # [J
    .param p10, "numOfBatch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.location.IExerciseLocationListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeLongArray([J)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeDoubleArray([D)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeDoubleArray([D)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeFloatArray([F)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeFloatArray([F)V

    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeFloatArray([F)V

    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeDoubleArray([D)V

    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeDoubleArray([D)V

    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeLongArray([J)V

    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/location/IExerciseLocationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onStatusChanged(I)V
    .locals 5
    .param p1, "exercise_status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.location.IExerciseLocationListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/location/IExerciseLocationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
