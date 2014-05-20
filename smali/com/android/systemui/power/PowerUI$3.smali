.class Lcom/android/systemui/power/PowerUI$3;
.super Landroid/content/BroadcastReceiver;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/power/PowerUI;->access$200()Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "PowerUI"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onReceive , action="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v13, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v6, v13, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v14, "level"

    const/16 v15, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    iput v14, v13, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v7, v13, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v14, "status"

    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    iput v14, v13, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v13, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v14, "plugged"

    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    iput v14, v13, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v9, v13, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v14, "invalid_charger"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    iput v14, v13, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    const-string v13, "health"

    const/4 v14, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v13, v13, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eqz v13, :cond_3

    const/4 v12, 0x1

    :goto_0
    if-eqz v10, :cond_4

    const/4 v11, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    #calls: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static {v13, v6}, Lcom/android/systemui/power/PowerUI;->access$300(Lcom/android/systemui/power/PowerUI;I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v14, v14, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    #calls: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static {v13, v14}, Lcom/android/systemui/power/PowerUI;->access$300(Lcom/android/systemui/power/PowerUI;I)I

    move-result v2

    invoke-static {}, Lcom/android/systemui/power/PowerUI;->access$200()Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "PowerUI"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "level          "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " --> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v15, v15, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "PowerUI"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "status         "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " --> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v15, v15, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "PowerUI"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "plugType       "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " --> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v15, v15, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "PowerUI"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "invalidCharger "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " --> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v15, v15, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "PowerUI"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bucket         "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " --> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "PowerUI"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "plugged        "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " --> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "PowerUI"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "health         "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v9, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v13, v13, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    if-eqz v13, :cond_5

    const-string v13, "PowerUI"

    const-string v14, "showing invalid charger warning"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->showInvalidChargerDialog()V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_5
    if-eqz v9, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v13, v13, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    if-nez v13, :cond_11

    const-string v13, "PowerUI"

    const-string v14, "closing invalid charger warning"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->dismissInvalidChargerDialog()V

    :cond_6
    if-nez v12, :cond_12

    if-lt v2, v8, :cond_7

    if-eqz v11, :cond_12

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v13, v13, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_12

    if-gez v2, :cond_12

    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v13, v13, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    #getter for: Lcom/android/systemui/power/PowerUI;->mPluggedBatteryLevel:I
    invoke-static {v14}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v14

    sub-int/2addr v13, v14

    const/4 v14, 0x2

    if-ge v13, v14, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v13, v13, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    const/16 v14, 0x19

    if-le v13, v14, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    #getter for: Lcom/android/systemui/power/PowerUI;->mLowChargingWarningDialog2:Lcom/htc/dialog/HtcAlertDialog;
    invoke-static {v13}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;)Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    #getter for: Lcom/android/systemui/power/PowerUI;->mLowChargingWarningDialog2:Lcom/htc/dialog/HtcAlertDialog;
    invoke-static {v13}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;)Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Dialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v14, 0x0

    #setter for: Lcom/android/systemui/power/PowerUI;->mLowChargingWarningDialog2:Lcom/htc/dialog/HtcAlertDialog;
    invoke-static {v13, v14}, Lcom/android/systemui/power/PowerUI;->access$502(Lcom/android/systemui/power/PowerUI;Lcom/htc/dialog/HtcAlertDialog;)Lcom/htc/dialog/HtcAlertDialog;

    :cond_a
    if-eqz v12, :cond_d

    if-nez v11, :cond_d

    invoke-static {}, Lcom/android/systemui/power/PowerUI;->access$200()Z

    move-result v13

    if-eqz v13, :cond_b

    const-string v13, "PowerUI"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "cable plugged, mPluggedBatteryLevel="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    #getter for: Lcom/android/systemui/power/PowerUI;->mPluggedBatteryLevel:I
    invoke-static {v15}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v14, v14, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    #setter for: Lcom/android/systemui/power/PowerUI;->mPluggedBatteryLevel:I
    invoke-static {v13, v14}, Lcom/android/systemui/power/PowerUI;->access$402(Lcom/android/systemui/power/PowerUI;I)I

    invoke-static {}, Lcom/android/systemui/power/PowerUI;->access$200()Z

    move-result v13

    if-eqz v13, :cond_c

    const-string v13, "PowerUI"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mPluggedBatteryLevel="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    #getter for: Lcom/android/systemui/power/PowerUI;->mPluggedBatteryLevel:I
    invoke-static {v15}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v14, 0x1

    #setter for: Lcom/android/systemui/power/PowerUI;->mshowLowChargingWarning2:Z
    invoke-static {v13, v14}, Lcom/android/systemui/power/PowerUI;->access$602(Lcom/android/systemui/power/PowerUI;Z)Z

    :cond_d
    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v13, v13, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_f

    const/4 v13, 0x2

    if-ne v3, v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    #getter for: Lcom/android/systemui/power/PowerUI;->mPluggedBatteryLevel:I
    invoke-static {v13}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v14, v14, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    sub-int/2addr v13, v14

    const/4 v14, 0x2

    if-lt v13, v14, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v13, v13, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    const/16 v14, 0xf

    if-gt v13, v14, :cond_f

    invoke-static {}, Lcom/android/systemui/power/PowerUI;->access$200()Z

    move-result v13

    if-eqz v13, :cond_e

    const-string v13, "PowerUI"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "@ mPluggedBatteryLevel="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    #getter for: Lcom/android/systemui/power/PowerUI;->mPluggedBatteryLevel:I
    invoke-static {v15}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",mBatteryLevel="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v15, v15, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    #getter for: Lcom/android/systemui/power/PowerUI;->mshowLowChargingWarning:Z
    invoke-static {v13}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)Z

    move-result v13

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    #calls: Lcom/android/systemui/power/PowerUI;->showLowChargingWarning()V
    invoke-static {v13}, Lcom/android/systemui/power/PowerUI;->access$800(Lcom/android/systemui/power/PowerUI;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v14, 0x0

    #setter for: Lcom/android/systemui/power/PowerUI;->mshowLowChargingWarning:Z
    invoke-static {v13, v14}, Lcom/android/systemui/power/PowerUI;->access$702(Lcom/android/systemui/power/PowerUI;Z)Z

    :cond_f
    const-string v13, "PowerUI"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "plugged = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", health = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mBatteryLevel = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v15, v15, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mPluggedBatteryLevel = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    #getter for: Lcom/android/systemui/power/PowerUI;->mPluggedBatteryLevel:I
    invoke-static {v15}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mLowBatteryWarningLevel2 = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x19

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mshowLowChargingWarning2 = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    #getter for: Lcom/android/systemui/power/PowerUI;->mshowLowChargingWarning2:Z
    invoke-static {v15}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_2

    const/4 v13, 0x2

    if-ne v3, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    #getter for: Lcom/android/systemui/power/PowerUI;->mPluggedBatteryLevel:I
    invoke-static {v13}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v14, v14, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    sub-int/2addr v13, v14

    const/4 v14, 0x2

    if-lt v13, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v13, v13, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    const/16 v14, 0x19

    if-gt v13, v14, :cond_2

    invoke-static {}, Lcom/android/systemui/power/PowerUI;->access$200()Z

    move-result v13

    if-eqz v13, :cond_10

    const-string v13, "PowerUI"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "@@ mPluggedBatteryLevel="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    #getter for: Lcom/android/systemui/power/PowerUI;->mPluggedBatteryLevel:I
    invoke-static {v15}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",mBatteryLevel="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v15, v15, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    #getter for: Lcom/android/systemui/power/PowerUI;->mshowLowChargingWarning2:Z
    invoke-static {v13}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    #calls: Lcom/android/systemui/power/PowerUI;->showLowChargingWarning2()V
    invoke-static {v13}, Lcom/android/systemui/power/PowerUI;->access$900(Lcom/android/systemui/power/PowerUI;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v14, 0x0

    #setter for: Lcom/android/systemui/power/PowerUI;->mshowLowChargingWarning2:Z
    invoke-static {v13, v14}, Lcom/android/systemui/power/PowerUI;->access$602(Lcom/android/systemui/power/PowerUI;Z)Z

    goto/16 :goto_2

    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v13, v13, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-eqz v13, :cond_6

    goto/16 :goto_2

    :cond_12
    if-nez v12, :cond_13

    if-le v2, v8, :cond_14

    if-lez v2, :cond_14

    :cond_13
    const-string v13, "PowerUI"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "closing low battery warning: level="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v15, v15, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v13}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    goto/16 :goto_3

    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v13, v13, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v13, :cond_8

    goto/16 :goto_3

    :cond_15
    const-string v13, "com.htc.content.intent.action.BATTERY_WARNING_INFO"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v0, p2

    #calls: Lcom/android/systemui/power/PowerUI;->onUnsupportedCharger(Landroid/content/Intent;)V
    invoke-static {v13, v0}, Lcom/android/systemui/power/PowerUI;->access$1000(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_16
    const-string v13, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v0, p2

    #calls: Lcom/android/systemui/power/PowerUI;->onBatteryLow(Landroid/content/Intent;)V
    invoke-static {v13, v0}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_17
    const-string v13, "com.htc.powersaversetting"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    const-string v13, "PowerUI"

    const-string v14, "com.htc.powersaversetting"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v0, p2

    #calls: Lcom/android/systemui/power/PowerUI;->PowerSaverOn(Landroid/content/Intent;)V
    invoke-static {v13, v0}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_18
    const-string v13, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    #setter for: Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J
    invoke-static {v13, v14, v15}, Lcom/android/systemui/power/PowerUI;->access$1302(Lcom/android/systemui/power/PowerUI;J)J

    goto/16 :goto_2

    :cond_19
    const-string v13, "android.intent.action.SCREEN_ON"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    const-wide/16 v14, -0x1

    #setter for: Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J
    invoke-static {v13, v14, v15}, Lcom/android/systemui/power/PowerUI;->access$1302(Lcom/android/systemui/power/PowerUI;J)J

    goto/16 :goto_2

    :cond_1a
    const-string v13, "com.htc.server.HtcPMSExtension.ACTUAL_SCREEN_OFF"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v13, v13, Lcom/android/systemui/power/PowerUI;->mExAutoPSModeAskDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v13, :cond_2

    invoke-static {}, Lcom/android/systemui/power/PowerUI;->access$200()Z

    move-result v13

    if-eqz v13, :cond_1b

    const-string v13, "PowerUI"

    const-string v14, "Cancel Extreme Auto Power Saver Mode Ask Dialog"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v13, v13, Lcom/android/systemui/power/PowerUI;->mExAutoPSModeAskDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v13}, Landroid/app/Dialog;->dismiss()V

    new-instance v4, Landroid/content/Intent;

    const-string v13, "com.htc.intent.action.HtcPowerSaver.ExtremeAutoModeOnASKOK"

    invoke-direct {v4, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v13, 0x1000

    invoke-virtual {v4, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    #calls: Lcom/android/systemui/power/PowerUI;->sendBroadcastHelperWithPermission(Landroid/content/Intent;)V
    invoke-static {v13, v4}, Lcom/android/systemui/power/PowerUI;->access$1400(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V

    new-instance v5, Landroid/content/Intent;

    const-string v13, "com.htc.intent.action.HtcPowerSaver.ExtremeAutoModeOn"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v13, 0x1000

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    #calls: Lcom/android/systemui/power/PowerUI;->sendBroadcastHelperWithPermission(Landroid/content/Intent;)V
    invoke-static {v13, v5}, Lcom/android/systemui/power/PowerUI;->access$1400(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_1c
    const-string v13, "PowerUI"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "unknown intent: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
