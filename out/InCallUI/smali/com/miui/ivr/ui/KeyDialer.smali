.class public Lcom/miui/ivr/ui/KeyDialer;
.super Ljava/lang/Object;
.source "KeyDialer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/ivr/ui/KeyDialer$Listener;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/miui/ivr/ui/KeyDialer$Listener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/ivr/ui/KeyDialer;->mHandler:Landroid/os/Handler;

    .line 28
    return-void
.end method


# virtual methods
.method public setListener(Lcom/miui/ivr/ui/KeyDialer$Listener;)V
    .locals 0
    .param p1, "l"    # Lcom/miui/ivr/ui/KeyDialer$Listener;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/miui/ivr/ui/KeyDialer;->mListener:Lcom/miui/ivr/ui/KeyDialer$Listener;

    .line 34
    return-void
.end method
