.class final Lcom/android/server/display/DisplayPowerState$1;
.super Landroid/util/FloatProperty;
.source "DisplayPowerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty",
        "<",
        "Lcom/android/server/display/DisplayPowerState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/server/display/DisplayPowerState;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 157
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 149
    check-cast p1, Lcom/android/server/display/DisplayPowerState;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerState$1;->get(Lcom/android/server/display/DisplayPowerState;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/android/server/display/DisplayPowerState;F)V
    .locals 0
    .param p1, "object"    # Lcom/android/server/display/DisplayPowerState;
    .param p2, "value"    # F

    .prologue
    .line 152
    invoke-virtual {p1, p2}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 153
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # F

    .prologue
    .line 149
    check-cast p1, Lcom/android/server/display/DisplayPowerState;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayPowerState$1;->setValue(Lcom/android/server/display/DisplayPowerState;F)V

    return-void
.end method
