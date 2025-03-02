.class public Landroid/hardware/scontext/SContextTemperatureAlertAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextTemperatureAlertAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextTemperatureAlertAttribute"


# instance fields
.field private mHighTemperature:I

.field private mIsIncluding:Z

.field private mLowTemperature:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 31
    const/16 v0, 0x46

    iput v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mLowTemperature:I

    .line 33
    const/16 v0, 0x7f

    iput v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mHighTemperature:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mIsIncluding:Z

    .line 41
    invoke-direct {p0}, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->setAttribute()V

    .line 42
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1
    .param p1, "lowTemperature"    # I
    .param p2, "highTemperature"    # I
    .param p3, "isIncluding"    # Z

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 31
    const/16 v0, 0x46

    iput v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mLowTemperature:I

    .line 33
    const/16 v0, 0x7f

    iput v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mHighTemperature:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mIsIncluding:Z

    .line 58
    iput p1, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mLowTemperature:I

    .line 59
    iput p2, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mHighTemperature:I

    .line 60
    iput-boolean p3, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mIsIncluding:Z

    .line 61
    invoke-direct {p0}, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->setAttribute()V

    .line 62
    return-void
.end method

.method private setAttribute()V
    .locals 3

    .prologue
    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "low_temperature"

    iget v2, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mLowTemperature:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    const-string/jumbo v1, "high_temperature"

    iget v2, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mLowTemperature:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    const-string/jumbo v1, "including"

    iget-boolean v2, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mIsIncluding:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    const/16 v1, 0x17

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 90
    return-void
.end method


# virtual methods
.method checkAttribute()Z
    .locals 4

    .prologue
    const/16 v3, 0x7f

    const/16 v2, -0x80

    const/4 v0, 0x0

    .line 67
    iget v1, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mLowTemperature:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mLowTemperature:I

    if-le v1, v3, :cond_1

    .line 69
    :cond_0
    const-string v1, "SContextTemperatureAlertAttribute"

    const-string v2, "The low temperature is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_0
    return v0

    .line 72
    :cond_1
    iget v1, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mHighTemperature:I

    if-lt v1, v2, :cond_2

    iget v1, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mHighTemperature:I

    if-le v1, v3, :cond_3

    .line 74
    :cond_2
    const-string v1, "SContextTemperatureAlertAttribute"

    const-string v2, "The high temperature is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    :cond_3
    iget v1, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mLowTemperature:I

    iget v2, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mHighTemperature:I

    if-le v1, v2, :cond_4

    .line 78
    const-string v1, "SContextTemperatureAlertAttribute"

    const-string v2, "The low temperature must be less than the high temperature."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method
