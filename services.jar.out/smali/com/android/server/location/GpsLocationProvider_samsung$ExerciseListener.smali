.class final Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;
.super Ljava/lang/Object;
.source "GpsLocationProvider_samsung.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider_samsung;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExerciseListener"
.end annotation


# instance fields
.field final mListener:Landroid/location/IExerciseLocationListener;

.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider_samsung;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider_samsung;Landroid/location/IExerciseLocationListener;)V
    .locals 0
    .param p2, "listener"    # Landroid/location/IExerciseLocationListener;

    .prologue
    .line 1702
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1703
    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;->mListener:Landroid/location/IExerciseLocationListener;

    .line 1704
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider_samsung;->access$500(Lcom/android/server/location/GpsLocationProvider_samsung;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 1709
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider_samsung;->access$500(Lcom/android/server/location/GpsLocationProvider_samsung;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1710
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1711
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;->mListener:Landroid/location/IExerciseLocationListener;

    if-eqz v0, :cond_0

    .line 1712
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;->mListener:Landroid/location/IExerciseLocationListener;

    invoke-interface {v0}, Landroid/location/IExerciseLocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1714
    :cond_0
    return-void

    .line 1710
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
