.class public Landroid/hardware/Camera$Area;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Area"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public rect:Landroid/graphics/Rect;

.field public weight:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;I)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "weight"    # I

    .prologue
    .line 2020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2021
    iput-object p1, p0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 2022
    iput p2, p0, Landroid/hardware/Camera$Area;->weight:I

    .line 2023
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 2033
    instance-of v2, p1, Landroid/hardware/Camera$Area;

    if-nez v2, :cond_1

    .line 2042
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 2036
    check-cast v0, Landroid/hardware/Camera$Area;

    .line 2037
    .local v0, "a":Landroid/hardware/Camera$Area;
    iget-object v2, p0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    if-nez v2, :cond_3

    .line 2038
    iget-object v2, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    .line 2042
    :cond_2
    iget v2, p0, Landroid/hardware/Camera$Area;->weight:I

    iget v3, v0, Landroid/hardware/Camera$Area;->weight:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 2040
    :cond_3
    iget-object v2, p0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0
.end method
