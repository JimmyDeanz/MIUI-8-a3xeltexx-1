.class public abstract Lcom/android/server/lights/LightsManager;
.super Ljava/lang/Object;
.source "LightsManager.java"


# static fields
.field public static final LIGHT_ID_ATTENTION:I = 0x7

.field public static final LIGHT_ID_BACKLIGHT:I = 0x0

.field public static final LIGHT_ID_BACKLIGHT_SUB:I = 0x1

.field public static final LIGHT_ID_BATTERY:I = 0x5

.field public static final LIGHT_ID_BLUETOOTH:I = 0x8

.field public static final LIGHT_ID_BUTTONS:I = 0x3

.field public static final LIGHT_ID_BUTTONS_SUB:I = 0x4

.field public static final LIGHT_ID_CONNECTIVITY:I = 0xa

.field public static final LIGHT_ID_COUNT:I = 0xe

.field public static final LIGHT_ID_KEYBOARD:I = 0x2

.field public static final LIGHT_ID_LED_SERVICE:I = 0xc

.field public static final LIGHT_ID_MOOD_LIGHT_SERVICE:I = 0xd

.field public static final LIGHT_ID_NOTIFICATIONS:I = 0x6

.field public static final LIGHT_ID_VOLUME:I = 0xb

.field public static final LIGHT_ID_WIFI:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getLight(I)Lcom/android/server/lights/Light;
.end method
