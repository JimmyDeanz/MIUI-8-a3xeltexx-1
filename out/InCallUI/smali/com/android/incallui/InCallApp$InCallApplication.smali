.class public Lcom/android/incallui/InCallApp$InCallApplication;
.super Lmiui/external/Application;
.source "InCallApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InCallApplication"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Lmiui/external/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;
    .locals 1

    .prologue
    .line 280
    new-instance v0, Lcom/android/incallui/InCallApp;

    invoke-direct {v0}, Lcom/android/incallui/InCallApp;-><init>()V

    return-object v0
.end method
