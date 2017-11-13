.class public interface abstract Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephonyCallback;
.super Ljava/lang/Object;
.source "IItsOnTelephonyCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephonyCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract setMobileDataEnable(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setPreferredNetworkType(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract trySetupData()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
