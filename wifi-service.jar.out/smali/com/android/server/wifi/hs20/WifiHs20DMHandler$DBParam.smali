.class public Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;
.super Ljava/lang/Object;
.source "WifiHs20DMHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20DMHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DBParam"
.end annotation


# instance fields
.field public nodeName:Ljava/lang/String;

.field public nodeVal:I

.field public selection:[Ljava/lang/String;

.field public selectionArgs:[Ljava/lang/String;

.field public tableType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1678
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    return-void
.end method
