.class Landroid/preference/SeekBarVolumizer$1;
.super Landroid/database/ContentObserver;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method constructor <init>(Landroid/preference/SeekBarVolumizer;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 184
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$1;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 187
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$1;->this$0:Landroid/preference/SeekBarVolumizer;

    # invokes: Landroid/preference/SeekBarVolumizer;->onInitSample()V
    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->access$200(Landroid/preference/SeekBarVolumizer;)V

    .line 188
    return-void
.end method
