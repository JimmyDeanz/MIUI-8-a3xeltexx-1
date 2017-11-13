.class Lcom/absolute/android/persistservice/j;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/ABTPersistenceService;


# direct methods
.method public constructor <init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 3701
    iput-object p1, p0, Lcom/absolute/android/persistservice/j;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    .line 3702
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3703
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 3708
    .line 3710
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3736
    :goto_0
    return-void

    .line 3712
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/absolute/android/persistservice/h;

    .line 3713
    iget-object v1, p0, Lcom/absolute/android/persistservice/j;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v1, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/h;)V

    goto :goto_0

    .line 3716
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/absolute/android/persistservice/h;

    .line 3717
    iget-object v1, p0, Lcom/absolute/android/persistservice/j;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v1, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/h;)V

    goto :goto_0

    .line 3720
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/absolute/android/persistservice/h;

    .line 3721
    iget-object v1, p0, Lcom/absolute/android/persistservice/j;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v1, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/h;)V

    goto :goto_0

    .line 3724
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/absolute/android/persistservice/g;

    .line 3725
    iget-object v1, p0, Lcom/absolute/android/persistservice/j;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v1, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/g;)V

    goto :goto_0

    .line 3728
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/absolute/android/persistservice/f;

    .line 3729
    iget-object v1, p0, Lcom/absolute/android/persistservice/j;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v1, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/f;)Lcom/absolute/android/persistence/AppInfoProperties;

    goto :goto_0

    .line 3732
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/absolute/android/persistservice/e;

    .line 3733
    iget-object v1, p0, Lcom/absolute/android/persistservice/j;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v1, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    goto :goto_0

    .line 3710
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
