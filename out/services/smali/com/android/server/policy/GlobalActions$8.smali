.class Lcom/android/server/policy/GlobalActions$8;
.super Lcom/android/server/policy/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;IIIII)V
    .locals 6
    .param p2, "x0"    # I
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I

    .prologue
    .line 1427
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$8;->this$0:Lcom/android/server/policy/GlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 1485
    invoke-super/range {p0 .. p4}, Lcom/android/server/policy/GlobalActions$ToggleAction;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v9

    .line 1486
    .local v9, "v":Landroid/view/View;
    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0x6f

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v10

    .line 1487
    .local v0, "arg1":[Ljava/lang/String;
    const/4 v10, 0x1

    new-array v1, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0x70

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v10

    .line 1488
    .local v1, "arg2":[Ljava/lang/String;
    const/4 v10, 0x1

    new-array v2, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0x71

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v10

    .line 1490
    .local v2, "arg3":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions$8;->this$0:Lcom/android/server/policy/GlobalActions;

    const-string/jumbo v11, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v12, "getSealedModeString"

    # invokes: Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v11, v12, v0}, Lcom/android/server/policy/GlobalActions;->access$3600(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1491
    .local v7, "proKioskString":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions$8;->this$0:Lcom/android/server/policy/GlobalActions;

    const-string/jumbo v11, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v12, "getSealedModeString"

    # invokes: Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v11, v12, v1}, Lcom/android/server/policy/GlobalActions;->access$3600(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1492
    .local v6, "proKioskStatusOnString":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions$8;->this$0:Lcom/android/server/policy/GlobalActions;

    const-string/jumbo v11, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v12, "getSealedModeString"

    # invokes: Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v11, v12, v2}, Lcom/android/server/policy/GlobalActions;->access$3600(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1498
    .local v5, "proKioskStatusOffString":Ljava/lang/String;
    const v10, 0x102000b

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1499
    .local v3, "messageView":Landroid/widget/TextView;
    const v10, 0x10203b5

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1500
    .local v8, "statusView":Landroid/widget/TextView;
    if-eqz v7, :cond_0

    .line 1501
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1503
    :cond_0
    iget-object v10, p0, Lcom/android/server/policy/GlobalActions$8;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v11, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-eq v10, v11, :cond_1

    iget-object v10, p0, Lcom/android/server/policy/GlobalActions$8;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v11, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-ne v10, v11, :cond_3

    :cond_1
    const/4 v4, 0x1

    .line 1504
    .local v4, "on":Z
    :goto_0
    if-eqz v4, :cond_4

    .line 1505
    if-eqz v6, :cond_2

    .line 1506
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1513
    :cond_2
    :goto_1
    return-object v9

    .line 1503
    .end local v4    # "on":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 1509
    .restart local v4    # "on":Z
    :cond_4
    if-eqz v5, :cond_2

    .line 1510
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onToggle(Z)V
    .locals 14
    .param p1, "on"    # Z

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1430
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions$8;->this$0:Lcom/android/server/policy/GlobalActions;

    const-string/jumbo v9, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v10, "getSealedState"

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$8;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$3500(Lcom/android/server/policy/GlobalActions;)[Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v9, v10, v11}, Lcom/android/server/policy/GlobalActions;->access$3600(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1431
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1432
    .local v5, "i":Landroid/content/Intent;
    new-array v0, v13, [Ljava/lang/String;

    const/16 v8, 0xdd

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v12

    .line 1433
    .local v0, "arg1":[Ljava/lang/String;
    new-array v1, v13, [Ljava/lang/String;

    const/16 v8, 0xde

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v12

    .line 1435
    .local v1, "arg2":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions$8;->this$0:Lcom/android/server/policy/GlobalActions;

    const-string/jumbo v9, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v10, "getSealedExitUI"

    # invokes: Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v9, v10, v0}, Lcom/android/server/policy/GlobalActions;->access$3600(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1436
    .local v4, "exitUiPackage":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions$8;->this$0:Lcom/android/server/policy/GlobalActions;

    const-string/jumbo v9, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v10, "getSealedExitUI"

    # invokes: Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v9, v10, v1}, Lcom/android/server/policy/GlobalActions;->access$3600(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1439
    .local v3, "exitUiClass":Ljava/lang/String;
    move-object v7, v3

    .line 1440
    .local v7, "qualClass":Ljava/lang/String;
    # getter for: Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$3700()Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 1444
    .local v6, "proKioskExitDialog":Landroid/app/AlertDialog;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7da

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 1445
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1448
    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 1449
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1450
    const-string v8, "."

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1451
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1456
    :cond_0
    :goto_0
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1457
    const/high16 v8, 0x10000000

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1459
    :try_start_0
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions$8;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v8, v5, v9}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1467
    .end local v0    # "arg1":[Ljava/lang/String;
    .end local v1    # "arg2":[Ljava/lang/String;
    .end local v3    # "exitUiClass":Ljava/lang/String;
    .end local v4    # "exitUiPackage":Ljava/lang/String;
    .end local v5    # "i":Landroid/content/Intent;
    .end local v6    # "proKioskExitDialog":Landroid/app/AlertDialog;
    .end local v7    # "qualClass":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 1453
    .restart local v0    # "arg1":[Ljava/lang/String;
    .restart local v1    # "arg2":[Ljava/lang/String;
    .restart local v3    # "exitUiClass":Ljava/lang/String;
    .restart local v4    # "exitUiPackage":Ljava/lang/String;
    .restart local v5    # "i":Landroid/content/Intent;
    .restart local v6    # "proKioskExitDialog":Landroid/app/AlertDialog;
    .restart local v7    # "qualClass":Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1460
    :catch_0
    move-exception v2

    .line 1461
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 1464
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto :goto_1
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1475
    const/4 v0, 0x1

    return v0
.end method

.method public showConditional()Z
    .locals 1

    .prologue
    .line 1479
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1470
    const/4 v0, 0x1

    return v0
.end method
