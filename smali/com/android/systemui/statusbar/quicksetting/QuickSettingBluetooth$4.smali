.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$4;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettingBluetooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v7, 0xc

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 323
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, action:Ljava/lang/String;
    const-string v1, ""

    .line 328
    .local v1, refreshInfo:Ljava/lang/String;
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v3, :cond_7

    .line 330
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 333
    .local v2, state:I
    const/16 v5, 0xb

    if-eq v2, v5, :cond_0

    const/16 v5, 0xd

    if-ne v2, v5, :cond_3

    .line 335
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->setEnabled(Z)V

    .line 336
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->bluetoothDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 337
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    .line 339
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->bluetoothDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v3

    if-nez v3, :cond_1

    .line 340
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->bluetoothDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 352
    :cond_1
    :goto_0
    const-string v3, "QuickSettingBluetooth"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive.ACTION_STATE_CHANGE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->stateToString(I)Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .end local v2           #state:I
    :cond_2
    :goto_1
    return-void

    .line 342
    .restart local v2       #state:I
    :cond_3
    if-eq v2, v7, :cond_4

    const/16 v5, 0xa

    if-ne v2, v5, :cond_1

    .line 344
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->bluetoothDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v5

    if-ne v5, v3, :cond_5

    .line 345
    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->bluetoothDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 347
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->refreshView()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)Ljava/lang/String;

    move-result-object v1

    .line 348
    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->setEnabled(Z)V

    .line 350
    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v5

    if-ne v2, v7, :cond_6

    :goto_2
    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    goto :goto_0

    :cond_6
    move v3, v4

    goto :goto_2

    .line 355
    .end local v2           #state:I
    :cond_7
    const-string v5, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v3, :cond_2

    .line 357
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->refreshView()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)Ljava/lang/String;

    move-result-object v1

    .line 359
    const-string v3, "QuickSettingBluetooth"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive.ACTION_CONNECTION_CHANGE:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;

    const-string v7, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v7, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->connectToString(I)Ljava/lang/String;
    invoke-static {v6, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->access$900(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
