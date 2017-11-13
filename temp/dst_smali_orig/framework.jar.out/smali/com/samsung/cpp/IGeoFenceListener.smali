.class public interface abstract Lcom/samsung/cpp/IGeoFenceListener;
.super Ljava/lang/Object;
.source "IGeoFenceListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/cpp/IGeoFenceListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract geoFenceExpired(Landroid/app/PendingIntent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
