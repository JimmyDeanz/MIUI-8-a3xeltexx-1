.class final Lcom/android/server/am/ActivityManagerService$MemItem;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MemItem"
.end annotation


# instance fields
.field final hasActivities:Z

.field final id:I

.field final isProc:Z

.field final label:Ljava/lang/String;

.field final pss:J

.field final shortLabel:Ljava/lang/String;

.field subitems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityManagerService$MemItem;",
            ">;"
        }
    .end annotation
.end field

.field final swap:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 3
    .param p1, "_label"    # Ljava/lang/String;
    .param p2, "_shortLabel"    # Ljava/lang/String;
    .param p3, "_pss"    # J
    .param p5, "_id"    # I

    .prologue
    const/4 v2, 0x0

    .line 14705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14706
    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->isProc:Z

    .line 14707
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->label:Ljava/lang/String;

    .line 14708
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->shortLabel:Ljava/lang/String;

    .line 14709
    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    .line 14710
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->swap:J

    .line 14711
    iput p5, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->id:I

    .line 14712
    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->hasActivities:Z

    .line 14713
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JIZ)V
    .locals 3
    .param p1, "_label"    # Ljava/lang/String;
    .param p2, "_shortLabel"    # Ljava/lang/String;
    .param p3, "_pss"    # J
    .param p5, "_id"    # I
    .param p6, "_hasActivities"    # Z

    .prologue
    .line 14695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14696
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->isProc:Z

    .line 14697
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->label:Ljava/lang/String;

    .line 14698
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->shortLabel:Ljava/lang/String;

    .line 14699
    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    .line 14700
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->swap:J

    .line 14701
    iput p5, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->id:I

    .line 14702
    iput-boolean p6, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->hasActivities:Z

    .line 14703
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJIZ)V
    .locals 1
    .param p1, "_label"    # Ljava/lang/String;
    .param p2, "_shortLabel"    # Ljava/lang/String;
    .param p3, "_pss"    # J
    .param p5, "_swap"    # J
    .param p7, "_id"    # I
    .param p8, "_hasActivities"    # Z

    .prologue
    .line 14683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14684
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->isProc:Z

    .line 14685
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->label:Ljava/lang/String;

    .line 14686
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->shortLabel:Ljava/lang/String;

    .line 14687
    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    .line 14688
    iput-wide p5, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->swap:J

    .line 14689
    iput p7, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->id:I

    .line 14690
    iput-boolean p8, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->hasActivities:Z

    .line 14691
    return-void
.end method
