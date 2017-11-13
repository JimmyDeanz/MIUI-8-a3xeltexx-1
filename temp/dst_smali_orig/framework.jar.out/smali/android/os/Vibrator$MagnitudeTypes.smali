.class public final enum Landroid/os/Vibrator$MagnitudeTypes;
.super Ljava/lang/Enum;
.source "Vibrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Vibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MagnitudeTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/os/Vibrator$MagnitudeTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/os/Vibrator$MagnitudeTypes;

.field public static final enum CallMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

.field public static final enum MaxMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

.field public static final enum MinMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

.field public static final enum NotificationMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

.field public static final enum TouchMagnitude:Landroid/os/Vibrator$MagnitudeTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/os/Vibrator$MagnitudeTypes;

    const-string v1, "TouchMagnitude"

    invoke-direct {v0, v1, v2}, Landroid/os/Vibrator$MagnitudeTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/Vibrator$MagnitudeTypes;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    new-instance v0, Landroid/os/Vibrator$MagnitudeTypes;

    const-string v1, "NotificationMagnitude"

    invoke-direct {v0, v1, v3}, Landroid/os/Vibrator$MagnitudeTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/Vibrator$MagnitudeTypes;->NotificationMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    new-instance v0, Landroid/os/Vibrator$MagnitudeTypes;

    const-string v1, "CallMagnitude"

    invoke-direct {v0, v1, v4}, Landroid/os/Vibrator$MagnitudeTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/Vibrator$MagnitudeTypes;->CallMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    new-instance v0, Landroid/os/Vibrator$MagnitudeTypes;

    const-string v1, "MaxMagnitude"

    invoke-direct {v0, v1, v5}, Landroid/os/Vibrator$MagnitudeTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/Vibrator$MagnitudeTypes;->MaxMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    new-instance v0, Landroid/os/Vibrator$MagnitudeTypes;

    const-string v1, "MinMagnitude"

    invoke-direct {v0, v1, v6}, Landroid/os/Vibrator$MagnitudeTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/Vibrator$MagnitudeTypes;->MinMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/os/Vibrator$MagnitudeTypes;

    sget-object v1, Landroid/os/Vibrator$MagnitudeTypes;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Vibrator$MagnitudeTypes;->NotificationMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    aput-object v1, v0, v3

    sget-object v1, Landroid/os/Vibrator$MagnitudeTypes;->CallMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    aput-object v1, v0, v4

    sget-object v1, Landroid/os/Vibrator$MagnitudeTypes;->MaxMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    aput-object v1, v0, v5

    sget-object v1, Landroid/os/Vibrator$MagnitudeTypes;->MinMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    aput-object v1, v0, v6

    sput-object v0, Landroid/os/Vibrator$MagnitudeTypes;->$VALUES:[Landroid/os/Vibrator$MagnitudeTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/os/Vibrator$MagnitudeTypes;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Landroid/os/Vibrator$MagnitudeTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator$MagnitudeTypes;

    return-object v0
.end method

.method public static values()[Landroid/os/Vibrator$MagnitudeTypes;
    .locals 1

    .prologue
    sget-object v0, Landroid/os/Vibrator$MagnitudeTypes;->$VALUES:[Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v0}, [Landroid/os/Vibrator$MagnitudeTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Vibrator$MagnitudeTypes;

    return-object v0
.end method
