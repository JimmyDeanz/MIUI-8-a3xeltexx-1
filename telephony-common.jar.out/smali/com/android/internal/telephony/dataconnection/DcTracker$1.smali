.class Lcom/android/internal/telephony/dataconnection/DcTracker$1;
.super Ljava/lang/Object;
.source "DcTracker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;->initApnContexts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/telephony/dataconnection/ApnContext;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    .prologue
    .line 895
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/ApnContext;)I
    .locals 2
    .param p1, "c1"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "c2"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 897
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/ApnContext;->priority:I

    iget v1, p2, Lcom/android/internal/telephony/dataconnection/ApnContext;->priority:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 895
    check-cast p1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->compare(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/ApnContext;)I

    move-result v0

    return v0
.end method
