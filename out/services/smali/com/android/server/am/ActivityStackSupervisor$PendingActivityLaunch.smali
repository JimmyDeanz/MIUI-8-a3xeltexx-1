.class Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PendingActivityLaunch"
.end annotation


# instance fields
.field final r:Lcom/android/server/am/ActivityRecord;

.field final sourceRecord:Lcom/android/server/am/ActivityRecord;

.field final stack:Lcom/android/server/am/ActivityStack;

.field final startFlags:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V
    .locals 0
    .param p1, "_r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "_sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "_startFlags"    # I
    .param p4, "_stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    .line 586
    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 587
    iput p3, p0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->startFlags:I

    .line 588
    iput-object p4, p0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->stack:Lcom/android/server/am/ActivityStack;

    .line 589
    return-void
.end method
